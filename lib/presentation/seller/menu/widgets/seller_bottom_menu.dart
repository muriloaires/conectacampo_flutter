import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/new_advertisement_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SellerBottomMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        BlocBuilder<SellerMenuBloc, SellerMenuState>(
          builder: (context, state) {
            return BottomNavigationBar(
              backgroundColor: ColorSet.gray10,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              selectedIconTheme: const IconThemeData(color: ColorSet.brown1),
              unselectedIconTheme: const IconThemeData(color: Colors.black),
              unselectedItemColor: Colors.black,
              selectedItemColor: ColorSet.brown1,
              unselectedLabelStyle:
                  const TextStyle(fontWeight: FontWeight.w600),
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/home.png')),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/grupos.png')),
                  label: 'Grupos',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                  ),
                  label: 'Anunciar',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/reservas.png')),
                  label: 'Reservas',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/user.png')),
                  label: 'Perfil',
                ),
              ],
              currentIndex: state.currentIndex,
              onTap: (index) {
                final bool reselect =
                    index == context.read<SellerMenuBloc>().state.currentIndex;
                final bloc = context.read<SellerMenuBloc>();
                switch (index) {
                  case 0:
                    if (!reselect) {
                      bloc.add(const SellerMenuEvent.homeTapped());
                    } else {
                      bloc.add(const SellerMenuEvent.homeRetapped());
                    }

                    break;
                  case 1:
                    if (!reselect) {
                      bloc.add(const SellerMenuEvent.groupsTapped());
                    } else {
                      bloc.add(const SellerMenuEvent.groupsRetapped());
                    }

                    break;
                  case 3:
                    if (!reselect) {
                      bloc.add(const SellerMenuEvent.reservationTapped());
                    } else {
                      bloc.add(const SellerMenuEvent.reservationRetapped());
                    }

                    break;

                  case 4:
                    if (!reselect) {
                      bloc.add(const SellerMenuEvent.profileTapped());
                    } else {
                      bloc.add(const SellerMenuEvent.profileRetapped());
                    }

                    break;
                  default:
                }
              },
            );
          },
        ),
        Container(
          height: 30,
          color: ColorSet.gray10,
        )
      ],
    );
  }
}
