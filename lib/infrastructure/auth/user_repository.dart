import 'dart:convert';

import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/auth/token_repository.dart';
import 'package:conectacampo/infrastructure/auth/user_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> persistUser(UserResponse user) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = jsonEncode(user.toJson());
  sharedPreferences.setString('logged_user', json);
  await saveTokens(user.accessToken, user.refreshToken);
  return unit;
}

Future<Either<AuthFailure, User>> loadLoggedUser() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = sharedPreferences.getString('logged_user');
  if (json == null) {
    return left(const AuthFailure.userNotFound());
  }

  return right(UserResponse.fromJson(jsonDecode(json) as Map<String, dynamic>)
      .toDomain());
}

Future<Unit> persistUserType(String userType) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  sharedPreferences.setString('logged_user_type', userType);
  return unit;
}

Future<String?> loadLoggedUserType() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final userType = sharedPreferences.getString('logged_user_type');
  if (userType == null) {
    return null;
  }

  return userType;
}
