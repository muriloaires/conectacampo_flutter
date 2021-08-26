import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/profile/profile_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const ProfilePage({required this.navigatorKey});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<ProfileBloc>()..add(const ProfileEvent.started()),
      child: BlocConsumer<ProfileBloc, ProfileState>(
        listener: (context, state) {},
        builder: (context, state) {
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
                                                  color: context
                                                          .read<ProfileBloc>()
                                                          .state
                                                          .isBuyer
                                                      ? ColorSet
                                                          .colorPrimaryGreen
                                                      : ColorSet.brown1,
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
                                          color: context
                                                  .read<ProfileBloc>()
                                                  .state
                                                  .isBuyer
                                              ? ColorSet.colorPrimaryGreen
                                              : ColorSet.brown1,
                                        ),
                                        SvgPicture.asset(
                                          'assets/Group.svg',
                                          color: context
                                                  .read<ProfileBloc>()
                                                  .state
                                                  .isBuyer
                                              ? ColorSet.colorPrimaryGreen
                                              : ColorSet.brown1,
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
                                    color: context
                                            .read<ProfileBloc>()
                                            .state
                                            .isBuyer
                                        ? ColorSet.colorPrimaryGreen
                                        : ColorSet.brown1,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                radius: 32,
                                backgroundColor:
                                    context.read<ProfileBloc>().state.isBuyer
                                        ? ColorSet.colorPrimaryGreen
                                        : ColorSet.brown1,
                                foregroundImage: NetworkImage(context
                                        .read<ProfileBloc>()
                                        .state
                                        .user
                                        .mediumAvatar
                                        ?.value
                                        .getOrElse(() => '') ??
                                    ''),
                              ),
                              title:
                                  Text.rich(TextSpan(text: 'Olá, ', children: [
                                TextSpan(
                                    text: context
                                        .read<ProfileBloc>()
                                        .state
                                        .user
                                        .name
                                        .getOrCrash(),
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold))
                              ])),
                            ),
                            ListTile(
                              leading: SvgPicture.asset(
                                  'assets/account_circle.svg',
                                  width: 24,
                                  height: 24,
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
                              title: const Text(
                                'Nome',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset('assets/email.svg',
                                  width: 24,
                                  height: 24,
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
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
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
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
                                  width: 24,
                                  height: 24,
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
                              title: const Text(
                                'Ajuda',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              leading: SvgPicture.asset('assets/security.svg',
                                  width: 24,
                                  height: 24,
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
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
                                  width: 24,
                                  height: 24,
                                  color:
                                      context.read<ProfileBloc>().state.isBuyer
                                          ? ColorSet.colorPrimaryGreen
                                          : ColorSet.brown1),
                              title: Text(
                                context.read<ProfileBloc>().state.isBuyer
                                    ? 'Quero vender no app!'
                                    : 'Quero comprar no app!',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                if (context.read<ProfileBloc>().state.isBuyer) {
                                  context
                                      .read<BuyerMenuBloc>()
                                      .add(const BuyerMenuEvent.logout());
                                } else {
                                  context
                                      .read<SellerMenuBloc>()
                                      .add(const SellerMenuEvent.logout());
                                }
                              },
                              leading: Icon(
                                Icons.logout_outlined,
                                color: context.read<ProfileBloc>().state.isBuyer
                                    ? ColorSet.colorPrimaryGreen
                                    : ColorSet.brown1,
                              ),
                              title: const Text(
                                'Sair',
                                style: TextStyle(
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
