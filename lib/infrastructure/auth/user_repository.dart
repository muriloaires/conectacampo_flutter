import 'dart:convert';

import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> persistUser(UserResponse user) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = jsonEncode(user.toJson());
  sharedPreferences.setString('logged_user', json);
  return unit;
}

Future<UserResponse?> loadLoggedUser() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = sharedPreferences.getString('logged_user');
  if (json == null) {
    return null;
  }

  return UserResponse.fromJson(jsonDecode(json) as Map<String, dynamic>);
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
  if (json == null) {
    return null;
  }

  return userType;
}
