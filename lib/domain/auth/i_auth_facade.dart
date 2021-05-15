import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedUser();
  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> requestSmsCode({
    @required PhoneNumber phoneNumber,
  });

  Future<Either<AuthFailure, Unit>> signIn({
    @required SmsCode smsCode,
  });

  Future<Either<AuthFailure, Unit>> signUp(
      {@required FullName fullName, @required Nickname nickname});
}
