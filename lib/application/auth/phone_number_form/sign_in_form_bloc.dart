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
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(phoneNumberChanged: (e) async* {
      yield state.copyWith(
          phoneNumber: PhoneNumber(e.phoneString),
          authFailureOrSuccessOption: none());
    }, verifyPhoneNumberPressed: (e) async* {
      Either<AuthFailure, Unit> failureOrSuccess = right(unit);
      if (state.phoneNumber.isValid()) {
        yield state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        );
        failureOrSuccess = await _authFacade.requestSmsCode(state.phoneNumber);
      }
      yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, started: (Started value) async* {
      final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

      final notificationJson = sharedPreferences.getString('teste_notification');
      print('Ih rapa oia so: $notificationJson');
    });
  }
}
