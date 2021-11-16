part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormBlocState with _$SignUpFormBlocState {
  const factory SignUpFormBlocState({
    required bool isSubmitting,
    required FullName? fullName,
    required Nickname? nickname,
    required bool showErrorMessages,
    required Option<String> optionOfAvatar,
    required bool authSuccess,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpFormBlocState;

  factory SignUpFormBlocState.initial() => SignUpFormBlocState(
      isSubmitting: false,
      fullName: null,
      nickname: null,
      showErrorMessages: true,


      optionOfAvatar: none(),
      authFailureOrSuccessOption: none(),
      authSuccess: false);
}
