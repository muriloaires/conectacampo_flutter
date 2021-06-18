part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormBlocState with _$SignUpFormBlocState {
  const factory SignUpFormBlocState(
    bool isSubmitting,
    FullName fullName,
    Nickname nickname,
    bool showErrorMessages,
    bool navigateNext,
    Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  ) = _SignUpFormBlocState;

  factory SignUpFormBlocState.initial() => SignUpFormBlocState(
      false, FullName(''), Nickname(''), false, false, none());
}
