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
  SignUpFormBloc(this._authFacade) : super(SignUpFormBlocState.initial()) {
    on<SignUpFormBlocEvent>((event, emit) async {
      await event.map(
        fullNameChanged: (value) async {
          emit(
            state.copyWith(
              fullName: FullName(value.fullName),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        nicknameChanged: (value) async {
          emit(
            state.copyWith(
              nickname: Nickname(value.nickname),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        btnSignUpPressed: (value) async {
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
            emit(state.copyWith(authFailureOrSuccessOption: none()));

            _authFacade.onNameAndNicknameSelected(
              state.fullName?.getOrCrash() ?? '',
              state.nickname?.getOrCrash() ?? '',
            );
          }

          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
        btnConcluirPressed: (value) async {
          Either<AuthFailure, Unit> failureOrSuccess =
              left(const AuthFailure.applicationError());

          if ((state.fullName?.isValid() ?? false) &&
              (state.nickname?.isValid() ?? false)) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await _authFacade.signUp(
              state.fullName!,
              state.nickname!,
              state.avatar ?? '',
            );
          }

          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: some(failureOrSuccess),
            ),
          );
        },
        btnConcluirEditionPressed: (value) async {
          if (state.avatar != null) {
            emit(state.copyWith(isSubmitting: true));
            Either<AuthFailure, Unit> updateAvatarFailureOrSuccess;
            updateAvatarFailureOrSuccess =
                await _authFacade.updateAvatar(state.avatar!);
            emit(
              state.copyWith(
                updateAvatarSuccess: updateAvatarFailureOrSuccess,
                isSubmitting: false,
              ),
            );
          }
        },
        startedWithUser: (value) async {
          emit(
            state.copyWith(
              fullName: FullName(_authFacade.getSelectedName()),
              nickname: Nickname(_authFacade.getSelectedNickname()),
            ),
          );
        },
        photoSelected: (value) async {
          emit(state.copyWith(avatar: value.path));
        },
      );
    });
  }

  final IAuthFacade _authFacade;
}
