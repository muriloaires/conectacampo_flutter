part of 'sms_code_form_bloc.dart';

@freezed
abstract class SmsCodeFormState with _$SmsCodeFormState {
  const factory SmsCodeFormState({
    @required SmsCode smsCode,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SmsCodeFormState;

  factory SmsCodeFormState.initial() =>
      SmsCodeFormState(smsCode: SmsCode(''),
          isSubmitting: false,
          showErrorMessages: false,
          authFailureOrSuccessOption: none());
}
