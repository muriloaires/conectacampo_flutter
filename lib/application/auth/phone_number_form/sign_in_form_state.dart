part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required PhoneNumber phoneNumber,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      phoneNumber: PhoneNumber(''),
      isSubmitting: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none());
}
