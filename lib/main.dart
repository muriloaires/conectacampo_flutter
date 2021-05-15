import 'dart:typed_data';

import 'package:conectacampo/infrastructure/places/places_facade.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  final response = await PlacesFacade().getAllPlaces();
  // Uint8List data =
  //     (await rootBundle.load('assets/dots.png')).buffer.asUint8List();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
