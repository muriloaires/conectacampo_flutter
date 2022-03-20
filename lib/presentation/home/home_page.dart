import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/home/widgets/home_bottom_menu.dart';
import 'package:conectacampo/presentation/sign_in/widgets/not_logged_widget.dart';
import 'package:conectacampo/presentation/store/store_page.dart';
import 'package:flutter/material.dart';

import 'ads/ads_feed.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _currentIndex = 0;
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: HomeBottomNavigationMenu(),
      body: WillPopScope(

        onWillPop: () async  { return true; },
        child: IndexedStack(
          index: _currentIndex,
          children: [
            NotLoggedWidget(),
            StoreMainPage(navigatorKeys[1]!),
            StoreMainPage(navigatorKeys[2]!),
            StoreMainPage(navigatorKeys[3]!),
            AdsFeedPage(navigatorKeys[4]!),
          ],
        ),
      ),
    );
  }
}
