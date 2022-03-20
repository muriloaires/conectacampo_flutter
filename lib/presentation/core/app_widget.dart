import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/home/home_page.dart';
import 'package:conectacampo/presentation/onboarding/onboarding.dart';
import 'package:conectacampo/presentation/seller/seller_main_page.dart';
import 'package:conectacampo/presentation/sign_in/phone_number_page.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:conectacampo/presentation/sign_in/user_type.dart';
import 'package:conectacampo/presentation/sign_in/widgets/select_avatar_page.dart';
import 'package:conectacampo/presentation/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class AppWidget extends StatelessWidget {
  const AppWidget();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      routes: {
        '/onboarding': (context) => Tutorial(),
        '/sign_in': (context) => PhoneNumberPage(),
        '/buyer_main': (context) => BuyerMainPage(),
        '/seller_main': (context) => SellerMainPage(),
        '/places': (context) => PlacesPage(),
        '/splash': (context) => SplashScreen(),
        '/avatar_page': (context) => SelectAvatarPage(isEdit: false),
        '/user_type': (context) => UserType(),
        '/home_page': (context) => const HomePage()
      },
      initialRoute: '/home_page',
      title: 'Conecta Campo',
      theme: ThemeData(
          fontFamily: 'Montserrat',
          primaryColor: ColorSet.colorPrimaryGreenButton,
          textTheme: const TextTheme(
            headline6: TextStyle(color: Colors.red, fontFamily: 'Roboto'),
          ),
          appBarTheme: const AppBarTheme(
            color: ColorSet.colorPrimaryGreen,
          )),
      builder: EasyLoading.init(),
      supportedLocales: const [
        Locale('pt', 'BR'),
      ],
    );
  }
}
