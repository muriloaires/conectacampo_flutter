import 'package:flutter/material.dart';

class StoreTabBar extends StatefulWidget implements PreferredSizeWidget {
  const StoreTabBar({Key? key}) : super(key: key);

  @override
  _StoreTabBarState createState() => _StoreTabBarState();

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}

class _StoreTabBarState extends State<StoreTabBar> {
  @override
  Widget build(BuildContext context) {
    return const TabBar(
      indicatorColor: Colors.white,
      tabs: [
        Tab(
          text: "Minha Loja",
        ),
        Tab(
          text: "Lojas Parceiras",
        )
      ],
    );
  }
}
