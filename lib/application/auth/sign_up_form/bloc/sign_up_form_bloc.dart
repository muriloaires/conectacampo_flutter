import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/i_auth_facade.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_form_bloc_event.dart';

part 'sign_up_form_bloc_state.dart';

part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormBlocEvent, SignUpFormBlocState> {
  SignUpFormBloc(this._authFacade) : super(SignUpFormBlocState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<SignUpFormBlocState> mapEventToState(
    SignUpFormBlocEvent event,
  ) async* {
    yield* event.map(fullNameChanged: (e) async* {
      yield state.copyWith(
          fullName: FullName(e.fullName), authFailureOrSuccessOption: none());
    }, nicknameChanged: (e) async* {
      yield state.copyWith(
          nickname: Nickname(e.nickname), authFailureOrSuccessOption: none());
    }, btnSignUpPressed: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess =
          left(const AuthFailure.applicationError());

      if (!(state.fullName?.isValid() ?? false)) {
        failureOrSuccess = left(const AuthFailure.invalidFullName());
      } else if (!(state.nickname?.isValid() ?? false)) {
        failureOrSuccess = left(const AuthFailure.invalidNickname());
      } else {
        failureOrSuccess = right(unit);
      }

      if ((state.fullName?.isValid() ?? false) &&
          (state.nickname?.isValid() ?? false)) {
        yield state.copyWith(authFailureOrSuccessOption: none());

        _authFacade.onNameAndNicknameSelected(
            state.fullName?.getOrCrash() ?? '',
            state.nickname?.getOrCrash() ?? '');
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, startedWithUser: (StartedWithUser value) async* {
      yield state.copyWith(
          fullName: FullName(_authFacade.getSelectedName()),
          nickname: Nickname(_authFacade.getSelectedNickname()));
    }, photoSelected: (PhotoSelected value) async* {
      yield state.copyWith(optionOfAvatar: some(value.path));
    }, btnConcluirPressed: (BtnConcluirPressed value) async* {
      Either<AuthFailure, Unit> failureOrSuccess =
          left(const AuthFailure.applicationError());

      if ((state.fullName?.isValid() ?? false) &&
          (state.nickname?.isValid() ?? false)) {
        yield state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none());
        failureOrSuccess = await _authFacade.signUp(state.fullName!,
            state.nickname!, state.optionOfAvatar.fold(() => '', (a) => a));
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: some(failureOrSuccess),
      );
    });
  }
}
