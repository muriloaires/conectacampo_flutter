part of 'sms_code_form_bloc.dart';

@freezed
class SmsCodeFormState with _$SmsCodeFormState {
  const factory SmsCodeFormState(
    SmsCode smsCode,
    bool isSubmitting,
    bool showErrorMessages,
    Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
    bool resetCodeVisible,
  ) = _SmsCodeFormState;

  factory SmsCodeFormState.initial() => SmsCodeFormState(
        SmsCode(''),
        false,
        false,
        none(),
        false,
      );
}
