part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormBlocState with _$SignUpFormBlocState {
  const factory SignUpFormBlocState({
    required bool isSubmitting,
    required FullName? fullName,
    required Nickname? nickname,
    required bool showErrorMessages,
    required String? avatar,
    required bool authSuccess,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    required Either<AuthFailure, Unit>? updateAvatarSuccess,
  }) = _SignUpFormBlocState;

  factory SignUpFormBlocState.initial() => SignUpFormBlocState(
        isSubmitting: false,
        fullName: null,
        nickname: null,
        showErrorMessages: true,
        avatar: null,
        authFailureOrSuccessOption: none(),
        authSuccess: false,
        updateAvatarSuccess: null,
      );
}
