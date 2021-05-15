part of 'sms_code_form_bloc.dart';

@freezed
abstract class SmsCodeFormEvent with _$SmsCodeFormEvent {
  const factory SmsCodeFormEvent.smsCodeChanged(String smsCode) =
      SmsCodeChanged;

  const factory SmsCodeFormEvent.resendCode() = ResendCode;

  const factory SmsCodeFormEvent.verifyCodePressed() = VerifyCode;
}
