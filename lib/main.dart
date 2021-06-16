import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
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
  runApp(AppWidget(await getInitialRoute()));
}

Future<String> getInitialRoute() async {
  final bool isTutorialSeen = await getOnboardingCheck();
  if (!isTutorialSeen) {
    return '/onboarding';
  }
  final bool isUserLogged = await loadLoggedUser() != null;

  if (!isUserLogged) {
    return '/sign_in';
  }

  final userType = await loadLoggedUserType();
  if (userType == null) {
    return '/sign_in';
  } else if (userType == 'seller') {
    return '/seller_main';
  } else {
    return '/buyer_main';
  }
}
