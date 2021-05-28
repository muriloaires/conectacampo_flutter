import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<bool> saveOnboardingCheck() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final success = await sharedPreferences.setBool('onboarding_check', true);
  return success;
}

Future<bool> getOnboardingCheck() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  final bool isChecked = sharedPreferences.getBool('onboarding_check') ?? false;
  return isChecked;
}
