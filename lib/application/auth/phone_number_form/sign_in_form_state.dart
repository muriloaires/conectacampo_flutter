part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState(
    PhoneNumber phoneNumber,
    bool isSubmitting,
    bool showErrorMessages,
    Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  ) = _SignInFormState;

  factory SignInFormState.initial() =>
      SignInFormState(PhoneNumber(''), false, false, none());
}
