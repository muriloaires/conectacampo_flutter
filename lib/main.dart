import 'dart:io';

import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await setUpDB();
  final messaging = FirebaseMessaging.instance;
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  final tooken = await messaging.getToken();
  print(tooken);
  setUpDB();
  if (Platform.isIOS) {
    final settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
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
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp();

  print("Handling a background message: ${message.messageId}");
}
