import 'dart:convert';

import 'package:conectacampo/infrastructure/notification/model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> persistNotificationReservation(Map<String, dynamic> data) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = jsonEncode(data);
  await sharedPreferences.setString('open_reservation', json);

  return unit;
}

Future<Map<String, dynamic>?> getReservationIdToOpen() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final notificationJson = sharedPreferences.getString('open_reservation');
  await sharedPreferences.remove('open_reservation');
  if (notificationJson == null) {
    return null;
  }

  try {
    final map = jsonDecode(notificationJson) as Map<String, dynamic>;
    final notificable = map["notificable"] as String;
    return {
      "notificableId": jsonDecode(notificable)["id"] as int,
      "kind": map["kind"]
    };
  } catch (e) {
    return null;
  }
}

Future<void> clearReservationToOpen() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  await sharedPreferences.remove('open_reservation');
}

Future<Unit> persistDisplayNotifications({required bool display}) async {
  final SharedPreferences sharedPreferences =
  await SharedPreferences.getInstance();
  await sharedPreferences.setBool('display_notifications', display);
  return unit;
}

Future<bool> displayNotifications() async {
  final SharedPreferences sharedPreferences =
  await SharedPreferences.getInstance();
  final displayNotifications = sharedPreferences.getBool('display_notifications');
  return displayNotifications ?? true;
}