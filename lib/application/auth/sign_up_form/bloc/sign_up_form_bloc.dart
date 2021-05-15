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
      Either<AuthFailure, Unit> failureOrSuccess;
      if (state.fullName.isValid() && state.nickname.isValid()) {
        yield state.copyWith(
            isSubmitting: true, authFailureOrSuccessOption: none());

        failureOrSuccess = await _authFacade.signUp(
            fullName: state.fullName, nickname: state.nickname);
      }

      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    });
  }
}
