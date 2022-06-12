import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/i_auth_facade.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        started: (value) async {},
        phoneNumberChanged: (value) {
          emit(
            state.copyWith(
              phoneNumber: PhoneNumber(value.phoneString),
              authFailureOrSuccessOption: none(),
            ),
          );
        },
        verifyPhoneNumberPressed: (value) async {
          Either<AuthFailure, Unit> failureOrSuccess = right(unit);
          if (state.phoneNumber.isValid()) {
            emit(
              state.copyWith(
                isSubmitting: true,
                authFailureOrSuccessOption: none(),
              ),
            );
            failureOrSuccess =
                await _authFacade.requestSmsCode(state.phoneNumber);
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
