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
  SmsCodeFormBloc(this._authFacade) : super(SmsCodeFormState.initial()) {
    on<SmsCodeFormEvent>((event, emit) async {
      await event.map(
        smsCodeChanged: (value) async {
          emit(
            state.copyWith(
              smsCode: SmsCode(value.smsCode),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        resendCode: (value) async {
          _authFacade.resentCode();
        },
        verifyCodePressed: (value) async {
          Either<AuthFailure, Unit> failureOrSuccess =
              left(const AuthFailure.applicationError());
          if (state.smsCode.isValid()) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess = await _authFacade.signIn(state.smsCode);
          }

          emit(
            state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              authFailureOrSuccessOption: optionOf(failureOrSuccess),
            ),
          );
        },
      );
    });
  }

  final IAuthFacade _authFacade;
}
