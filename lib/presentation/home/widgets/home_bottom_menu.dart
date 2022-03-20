import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationMenu extends StatefulWidget {
  const HomeBottomNavigationMenu();

  @override
  State<HomeBottomNavigationMenu> createState() =>
      _HomeBottomNavigationMenuState();
}

class _HomeBottomNavigationMenuState extends State<HomeBottomNavigationMenu> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Colors.black,
      selectedItemColor: ColorSet.greenTextColor,
      showUnselectedLabels: true,
      currentIndex: index,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "Início",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search_outlined),
          label: "Buscar",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: "Chats",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.storefront_outlined),
          label: "Loja",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          label: "Mais",
        ),
      ],
      onTap: (tapIndex) {
        setState(() {
          index = tapIndex;
        });
      },
    );
  }
}
