import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/onboarding/onboarding.dart';
import 'package:conectacampo/presentation/sign_in/phone_number_page.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  final String initialRoute;

  const AppWidget(this.initialRoute);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/onboarding': (context) => Tutorial(),
        '/sign_in': (context) => PhoneNumberPage(),
        '/buyer_main': (context) => BuyerMainPage(),
        '/places': (context) => PlacesPage(),
      },
      initialRoute: '/places',
      title: 'Conecta Campo',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: ColorSet.colorPrimaryGreenButton,
          hintColor: Colors.white,
          textTheme: const TextTheme(
              headline6: TextStyle(color: Colors.red, fontFamily: 'Roboto')),
          appBarTheme: const AppBarTheme(
            color: ColorSet.colorPrimaryGreen,
          )),
    );
  }
}
