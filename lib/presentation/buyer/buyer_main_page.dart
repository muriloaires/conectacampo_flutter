import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/menu/buyer_summary.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BuyerMainPage extends StatelessWidget {
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BuyerMenuBloc>(create: (BuildContext context) => getIt()),
        BlocProvider<AdvertisementsBloc>(
            create: (BuildContext context) =>
                getIt()..add(const AdvertisementsEvent.started())),
      ],
      child: BlocConsumer<BuyerMenuBloc, BuyerMenuState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            backgroundColor: ColorSet.textFieldGrayBackground,
            bottomNavigationBar: _getBottomMenu(context, state),
            body: WillPopScope(
              onWillPop: () async {
                return !await Navigator.maybePop(
                    navigatorKeys[state.currentIndex]!.currentState!.context);
              },
              child: IndexedStack(
                index: context.read<BuyerMenuBloc>().state.currentIndex,
                children: [
                  BuyerSummary(navigatorKeys[0]!),
                  Scaffold(body: Text('Grupos')),
                  Scaffold(body: Text('Reservas')),
                  Scaffold(body: Text('Perfil'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _getBottomMenu(BuildContext context, BuyerMenuState state) {
    return SizedBox(
      height: 125,
      child: Stack(children: [
        Column(
          children: [
            const SizedBox(
              height: 35,
            ),
            BottomNavigationBar(
              backgroundColor: ColorSet.gray10,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              selectedIconTheme:
                  const IconThemeData(color: ColorSet.greenTextColor),
              unselectedIconTheme: const IconThemeData(color: Colors.black),
              unselectedItemColor: Colors.black,
              selectedItemColor: ColorSet.greenTextColor,
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
                  label: 'Comprar',
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
                    index == context.read<BuyerMenuBloc>().state.currentIndex;
                final bloc = context.read<BuyerMenuBloc>();
                switch (index) {
                  case 0:
                    if (!reselect) {
                      bloc.add(const BuyerMenuEvent.homeTapped());
                    } else {
                      navigatorKeys[0]!
                          .currentState!
                          .popUntil((r) => r.isFirst);
                    }

                    break;
                  case 1:
                    if (!reselect) {
                      bloc.add(const BuyerMenuEvent.groupsTapped());
                    } else {
                      bloc.add(const BuyerMenuEvent.groupsRetapped());
                    }

                    break;
                  case 3:
                    if (!reselect) {
                      bloc.add(const BuyerMenuEvent.reservationTapped());
                    } else {
                      bloc.add(const BuyerMenuEvent.reservationRetapped());
                    }

                    break;

                  case 4:
                    if (!reselect) {
                      bloc.add(const BuyerMenuEvent.profileTapped());
                    } else {
                      bloc.add(const BuyerMenuEvent.profileRetapped());
                    }

                    break;
                  default:
                }
              },
            ),
            Container(
              height: 34,
              color: ColorSet.gray10,
            )
          ],
        ),
        Align(
          alignment: Alignment.topCenter,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 68.0,
              height: 68.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorSet.greenIcon,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/white_icon.svg'),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
