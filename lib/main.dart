import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const AppWidget());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..indicatorColor = ColorSet.green1
    ..progressColor = ColorSet.green1
    ..backgroundColor = ColorSet.grayDark
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
