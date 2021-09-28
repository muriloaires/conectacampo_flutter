import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Option<Either<AuthFailure, User>>> getSignedUser();

  Future<Either<AuthFailure, User>> updateUser(
      String? name, String? nickname, String? email);

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> requestSmsCode(
    PhoneNumber phoneNumber,
  );

  Future<Either<AuthFailure, Unit>> signIn(
    SmsCode smsCode,
  );

  Unit onNameAndNicknameSelected(String name, String nickname);

  Future<Either<AuthFailure, Unit>> signUp(
      FullName fullName, Nickname nickname, String avatarPath);

  String getSelectedName();
  String getSelectedNickname();
}
