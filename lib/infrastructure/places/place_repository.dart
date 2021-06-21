import 'dart:convert';

import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<Unit> persistSelectedPlace(Place place) async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = jsonEncode(place.toJson());
  sharedPreferences.setString('selected_place', json);

  return unit;
}

Future<Place?> loadSelectedPlace() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();

  final json = sharedPreferences.getString('selected_place');
  if (json == null) {
    return null;
  }

  return Place.fromJson(jsonDecode(json) as Map<String, dynamic>);
}
