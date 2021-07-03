import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> saveTokens(String? accessToken, String? refreshToken) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  if (accessToken != null) {
    await sharedPreferences.setString('access_token', accessToken);
  }

  if (refreshToken != null) {
    await sharedPreferences.setString('refresh_token', refreshToken);
  }

  return unit;
}

Future<String?> getCurrentAcessToken() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  return sharedPreferences.getString('access_token');
}

Future<String?> getCurrentRefreshToken() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  return sharedPreferences.getString('refresh_token');
}

Future<Unit> resetTokens() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  await sharedPreferences.remove('access_token');
  await sharedPreferences.remove('refresh_token');
  return unit;
}
