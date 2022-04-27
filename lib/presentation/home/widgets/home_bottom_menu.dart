import 'package:conectacampo/application/home/home_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: ColorSet.greenTextColor,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          currentIndex: state.currentIndex,
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
              icon: Icon(Icons.feed_outlined),
              label: "Reservas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined),
              label: "Suas Lojas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert),
              label: "Mais",
            ),
          ],
          onTap: (tapIndex) {
            switch (tapIndex) {
              case 0:
                context.read<HomeBloc>().add(const HomeEvent.homeTapped());
                break;
              case 1:
                context.read<HomeBloc>().add(const HomeEvent.searchTapped());
                break;
              case 2:
                context
                    .read<HomeBloc>()
                    .add(const HomeEvent.reservationsTapped());
                break;
              case 3:
                context.read<HomeBloc>().add(const HomeEvent.storesTapped());
                break;
              case 4:
                context.read<HomeBloc>().add(const HomeEvent.moreTapped());
                break;
              default:
            }
          },
        );
      },
    );
  }
}
