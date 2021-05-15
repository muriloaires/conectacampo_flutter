import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/i_auth_facade.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sms_code_form_bloc.freezed.dart';

part 'sms_code_form_event.dart';

part 'sms_code_form_state.dart';

@injectable
class SmsCodeFormBloc extends Bloc<SmsCodeFormEvent, SmsCodeFormState> {
  SmsCodeFormBloc(this._authFacade) : super(SmsCodeFormState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<SmsCodeFormState> mapEventToState(
    SmsCodeFormEvent event,
  ) async* {
    yield* event.map(
        smsCodeChanged: (e) async* {
          yield state.copyWith(
              smsCode: SmsCode(e.smsCode), authFailureOrSuccessOption: none());
        },
        resendCode: (e) async* {},
        verifyCodePressed: (VerifyCode value) async* {
          Either<AuthFailure, Unit> failureOrSuccess;
          if (state.smsCode.isValid()) {
            yield state.copyWith(
                isSubmitting: true, authFailureOrSuccessOption: none());
            failureOrSuccess = await _authFacade.signIn(smsCode: state.smsCode);
          }

          yield state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess));
        });
  }
}
