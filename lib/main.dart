import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  // Uint8List data =
  //     (await rootBundle.load('assets/dots.png')).buffer.asUint8List();
  await Firebase.initializeApp();
  runApp(AppWidget());
}
