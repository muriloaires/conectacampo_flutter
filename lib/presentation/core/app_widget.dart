import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/chat/chat_page.dart';
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

class AppWidget extends StatefulWidget {
  const AppWidget();

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> with WidgetsBindingObserver {
  IChatFacade chatFacade = ChatFacade();
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    chatFacade.setChatStatus(isOnline: true);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.detached ||
        state == AppLifecycleState.inactive) {
      return;
    }
    final isBackground = state == AppLifecycleState.paused;
    if (isBackground) {
      chatFacade.setChatStatus(isOnline: false);
    }

    if (state == AppLifecycleState.resumed) {
      chatFacade.setChatStatus(isOnline: true);
    }
  }

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
        '/home_page': (context) => const HomePage(),
        // '/chat_page': (context) => const ChatPage()
      },
      initialRoute: '/splash',
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
