import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/cart/cart_page.dart';
import 'package:conectacampo/presentation/buyer/group/group_page.dart';
import 'package:conectacampo/presentation/buyer/menu/buyer_summary.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/profile/profile_page.dart';
import 'package:conectacampo/presentation/seller/seller_main_page.dart';
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
        BlocProvider<BuyerMenuBloc>(
            create: (context) => getIt()..add(const BuyerMenuEvent.started())),
        BlocProvider<AdvertisementsBloc>(
            create: (context) =>
                getIt()..add(const AdvertisementsEvent.started())),
        BlocProvider<GroupBloc>(
            create: (context) => getIt()..add(const GroupEvent.started()))
      ],
      child: BlocConsumer<BuyerMenuBloc, BuyerMenuState>(
        listener: (context, state) async {
          if (state.navToSeller) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => SellerMainPage(),
                ),
                (route) => false);
          }

          if (state.openCart) {
            final success = await Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CartPage(),
            )) as bool?;
            if (success != null && success) {
              showDialog<String>(
                context: context,
                builder: (BuildContext dialogContext) => Dialog(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      const Divider(),
                      const CircleAvatar(
                        radius: 35,
                        backgroundColor: ColorSet.green1,
                        child: Icon(
                          Icons.check,
                          size: 48,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(),
                      const Center(
                        child: Text('Pedido efetuado com sucesso!',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      const Divider(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text('Ok',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorSet.grayDark))),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
            context.read<BuyerMenuBloc>().add(const BuyerMenuEvent.started());
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              Scaffold(
                backgroundColor: ColorSet.textFieldGrayBackground,
                bottomNavigationBar: _getBottomMenu(context, state),
                body: WillPopScope(
                  onWillPop: () async {
                    return !await Navigator.maybePop(
                        navigatorKeys[state.currentIndex]!
                            .currentState!
                            .context);
                  },
                  child: IndexedStack(
                    index: context.read<BuyerMenuBloc>().state.currentIndex,
                    children: [
                      BuyerSummary(navigatorKeys[0]!),
                      GroupPage(navigatorKeys[1]!),
                      const Scaffold(body: Text('Reservas')),
                      const Scaffold(body: Text('Reservas')),
                      ProfilePage(
                          navigatorKey: navigatorKeys[3]!, isBuyer: true)
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 68,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      GestureDetector(
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
                      const SizedBox(
                        height: 55,
                      )
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }

  Widget _getBottomMenu(BuildContext context, BuyerMenuState state) {
    return ListView(shrinkWrap: true, children: [
      Visibility(
        visible: state.itemsInCart.isNotEmpty,
        child: GestureDetector(
          onTap: () {
            context
                .read<BuyerMenuBloc>()
                .add(const BuyerMenuEvent.onCartTapped());
          },
          child: Container(
            padding: const EdgeInsets.all(4),
            color: ColorSet.green2,
            height: 45,
            child: Row(
              children: [
                SvgPicture.asset('assets/basket.svg', height: 24, width: 24),
                const Expanded(child: SizedBox()),
                Text(
                  '${state.itemsInCart.length} ${state.itemsInCart.length > 1 ? 'itens' : 'item'}',
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
      BottomNavigationBar(
        elevation: 0,
        backgroundColor: ColorSet.gray10,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        selectedIconTheme: const IconThemeData(color: ColorSet.greenTextColor),
        unselectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedItemColor: Colors.black,
        selectedItemColor: ColorSet.greenTextColor,
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
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
                navigatorKeys[0]!.currentState!.popUntil((r) => r.isFirst);
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
                navigatorKeys[1]!.currentState!.popUntil((r) => r.isFirst);
              }

              break;
            default:
          }
        },
      ),
      Container(
        color: ColorSet.gray10,
        height: 30,
      )
    ]);
  }
}
