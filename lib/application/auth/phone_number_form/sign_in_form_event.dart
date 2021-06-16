part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.phoneNumberChanged(String phoneString) =
      PhoneNumberChanged;

  const factory SignInFormEvent.verifyPhoneNumberPressed() =
      VerifyPhoneNumberPressed;
}
