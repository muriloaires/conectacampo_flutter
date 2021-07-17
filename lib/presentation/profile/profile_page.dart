import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/profile/profile_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey navigatorKey;
  final bool isBuyer;
  const ProfilePage({required this.navigatorKey, required this.isBuyer});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProfileBloc(isBuyer: isBuyer)..add(const ProfileEvent.started()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
          final primaryColor =
              state.isBuyer ? ColorSet.colorPrimaryGreen : ColorSet.brown1;

          final user = state.optionOfUserFailureOrSuccess
              .fold(() => null, (a) => a.fold((l) => null, (r) => r));
          return Navigator(
              key: navigatorKey,
              onGenerateRoute: (settings) => MaterialPageRoute(
                  settings: settings,
                  builder: (context) => Scaffold(
                        appBar: AppBar(
                          automaticallyImplyLeading: false,
                          backgroundColor: Colors.white,
                          toolbarHeight: 120,
                          title: SizedBox(
                            height: 120,
                            width: double.infinity,
                            child: Expanded(
                              child: Stack(
                                children: [
                                  Align(
                                    child: SizedBox(
                                      height: 40,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: SizedBox(
                                              width: 24,
                                              height: 24,
                                              child: GestureDetector(
                                                onTap: () {},
                                                child: SvgPicture.asset(
                                                  'assets/notification_outline_dot.svg',
                                                  height: 24,
                                                  width: 24,
                                                  color: primaryColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/white_icon.svg',
                                          color: primaryColor,
                                        ),
                                        SvgPicture.asset(
                                          'assets/Group.svg',
                                          color: primaryColor,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        body: ListView(
                          children: [
                            ListTile(
                              title: Text(
                                'Ajustes',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 32,
                                backgroundColor: primaryColor,
                                foregroundImage: NetworkImage(user
                                        ?.mediumAvatar?.value
                                        .getOrElse(() => '') ??
                                    ''),
                              ),
                              title:
                                  Text.rich(TextSpan(text: 'Olá, ', children: [
                                TextSpan(
                                    text: user?.name.getOrCrash() ?? '',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ])),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/account_circle.svg',
                                  width: 24,
                                  height: 24,
                                  color: primaryColor),
                              title: const Text(
                                'Nome',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset('assets/email.svg',
                                  width: 24, height: 24, color: primaryColor),
                              title: const Text(
                                'Email',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/notifications_active.svg',
                                  width: 24,
                                  height: 24,
                                  color: primaryColor),
                              title: const Text(
                                'Receber Notificações',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              trailing: Switch(
                                value: true,
                                onChanged: (value) {},
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: ColorSet.grayLine,
                            ),
                            ListTile(
                              leading: SvgPicture.asset('assets/help.svg',
                                  width: 24, height: 24, color: primaryColor),
                              title: const Text(
                                'Ajuda',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset('assets/security.svg',
                                  width: 24, height: 24, color: primaryColor),
                              title: const Text(
                                'Termos e Privacidade',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                print(
                                    'Is buyer decision ${context.read<ProfileBloc>().state.isBuyer}');
                                if (context.read<ProfileBloc>().state.isBuyer) {
                                  context.read<BuyerMenuBloc>().add(
                                      const BuyerMenuEvent.navToSellerTapped());
                                } else {
                                  context.read<SellerMenuBloc>().add(
                                      const SellerMenuEvent.navToBuyerTapped());
                                }
                              },
                              leading: SvgPicture.asset('assets/devices.svg',
                                  width: 24, height: 24, color: primaryColor),
                              title: Text(
                                state.isBuyer
                                    ? 'Quero vender no app!'
                                    : 'Quero comprar no app!',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      )));
        },
      ),
    );
  }
}
