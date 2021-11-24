import 'dart:io';

import 'package:conectacampo/infrastructure/notification/notification_controller.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setUpDB();
  final messaging = FirebaseMessaging.instance;
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  setUpDB();
  if (Platform.isIOS) {
    await messaging.requestPermission();
  }
  runApp(const AppWidget());
  configLoading();
}

Future<void> setUpDB() async {
  var db = await openDatabase('my_db.db');
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

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  await sharedPreferences.setString(
      'teste_notification', message.notification?.title ?? 'deu ruim');

  await Firebase.initializeApp();

  persistNotificationReservation(message.data);
}
