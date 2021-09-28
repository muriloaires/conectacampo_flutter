import 'dart:async';
import 'dart:convert';

import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/i_auth_facade.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  static const routeSessions = '/sessions';
  static const routeUsers = '/users';
  static const routeMe = '/me';

  final FirebaseAuth _firebaseAuth;

  String _verificationId = '';

  String _phoneNumber = '';
  String _name = '';
  String _nickname = '';

  AuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> requestSmsCode(
      PhoneNumber phoneNumber) async {
    final Completer<Either<AuthFailure, Unit>> completer = Completer();

    final phoneNumberString = phoneNumber.getOrCrash();
    await _firebaseAuth.verifyPhoneNumber(
        phoneNumber: '+55$phoneNumberString',
        verificationCompleted:
            (PhoneAuthCredential phoneAuthCredential) async {},
        verificationFailed: (FirebaseAuthException authException) {
          if (authException.code == 'invalid-phone-number') {
            completer
                .completeError(left(const AuthFailure.invalidPhoneNumber()));
          }
        },
        codeSent: (String verificationId, int? forceResendingToken) async {
          _verificationId = verificationId;
          _phoneNumber = phoneNumber.getOrCrash();
          completer.complete(right(unit));
        },
        codeAutoRetrievalTimeout: (String verificationId) {});

    return completer.future;
  }

  @override
  Future<Either<AuthFailure, Unit>> signIn(SmsCode smsCode) async {
    final smsCodeString = smsCode.getOrCrash();

    final AuthCredential phoneAuthCredential = PhoneAuthProvider.credential(
        verificationId: _verificationId, smsCode: smsCodeString);

    try {
      await _firebaseAuth.signInWithCredential(phoneAuthCredential);
      final response = await restSignIn(_phoneNumber);
      return response.fold((l) => left(l), (r) => right(unit));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidSmsCode());
      } else if (e.code == 'invalid-verification-id') {
        return left(const AuthFailure.invalidVerificationId());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future<Either<AuthFailure, UserResponse>> restSignIn(
      String phoneNumber) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeSessions');
    final response = await http.post(url,
        body: UserRequest('+55${phoneNumber.replaceAll(RegExp(r'-'), '')}')
            .toJson(),
        headers: getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final user = UserResponse.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
      await persistUser(user);
      return right(user);
    } else if (code == 404) {
      return left(const AuthFailure.userNotFound());
    } else if (code == 401) {
      return left(const AuthFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AuthFailure.applicationError());
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Option<Either<AuthFailure, User>>> getSignedUser() async {
    final localUser = await loadLoggedUser();
    return Future.value(optionOf(localUser));
  }

  @override
  Future<Either<AuthFailure, Unit>> signUp(
      FullName fullName, Nickname nickname, String avatar) async {
    final firstName = fullName.getOrCrash().split(' ')[0];

    final lastName = fullName.getOrCrash().split(' ')[1];
    final url = Uri.https(baseUrl, '$apiVersion$routeUsers');
    final request = http.MultipartRequest(
      'POST',
      url,
    );
    request.headers.addAll(getApiHeader());
    request.files.add(await http.MultipartFile.fromPath('avatar', avatar));
    request.fields['first_name'] = firstName;
    request.fields['last_name'] = lastName;
    request.fields['nickname'] = nickname.getOrCrash();
    request.fields['phone_number'] =
        '+55${_phoneNumber.replaceAll(RegExp(r'-'), '')}';

    final response = await request.send();
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final user = UserResponse.fromJson(
          json.decode(await response.stream.bytesToString())
              as Map<String, dynamic>);
      await persistUser(user);
      return right(unit);
    } else if (code == 401) {
      return left(const AuthFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      final errors = Errors.fromJson(
          jsonDecode(await response.stream.bytesToString())
              as Map<String, dynamic>);
      if (errors.errors.contains('Celular já está em uso')) {
        return left(const AuthFailure.phoneAlreadyUsed());
      }
      return left(const AuthFailure.applicationError());
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Unit onNameAndNicknameSelected(String name, String nickname) {
    _name = name;
    _nickname = nickname;
    return unit;
  }

  @override
  String getSelectedName() => _name;

  @override
  String getSelectedNickname() => _nickname;

  @override
  Future<Either<AuthFailure, User>> updateUser(
    String? name,
    String? nickname,
    String? email,
  ) async {
    final url = Uri.https(
      baseUrl,
      '$apiVersion$routeMe',
    );
    final firstName = name?.split(' ')[0];

    final lastName = name?.split(' ')[1];
    final response = await getAuthenticatedPatchRequest(
      url,
      headers: getApiHeader(),
      body: jsonEncode({
        'first_name': firstName,
        'last_name': lastName,
        'nickname': nickname,
      }),
    );
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final user = UserResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
      await persistUser(user);
      return right(user.toDomain());
    } else if (code == 401) {
      return left(const AuthFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AuthFailure.applicationError());
    } else {
      return left(const AuthFailure.serverError());
    }
  }
}
