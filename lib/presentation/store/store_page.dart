import 'package:conectacampo/presentation/store/widgets/no_configured_store.dart';
import 'package:conectacampo/presentation/store/widgets/store_tab_bar.dart';
import 'package:flutter/material.dart';

class StoreMainPage extends StatelessWidget {
  const StoreMainPage(GlobalKey<NavigatorState> globalKey);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            title: Text("Administre sua Loja"), bottom: const StoreTabBar()),
        body: const TabBarView(
          children: [
            Center(
              child: NoConfiguredStore(),
            ),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
