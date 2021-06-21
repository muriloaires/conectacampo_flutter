import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/app_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:injectable/injectable.dart';

Future<void> main() async {
  configureInjection(Environment.prod);
  WidgetsFlutterBinding.ensureInitialized();
  // Uint8List data =
  //     (await rootBundle.load('assets/dots.png')).buffer.asUint8List();
  await Firebase.initializeApp();
  runApp(AppWidget(await getInitialRoute()));
  configLoading();
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

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..indicatorColor = ColorSet.green1
    ..progressColor = ColorSet.green1
    ..backgroundColor = ColorSet.green1
    ..indicatorColor = Colors.white
    ..textColor = Colors.white
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = false;
}
