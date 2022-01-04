import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/profile/profile_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/notification/notifications_page.dart';
import 'package:conectacampo/presentation/profile/edit_name_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_plus/share_plus.dart';

import 'edit_email_page.dart';

class ProfilePage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const ProfilePage(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        settings: settings,
        builder: (context) => BlocConsumer<ProfileBloc, ProfileState>(
          listener: (context, state) {
            if (state.restartApplication) {
              Phoenix.rebirth(context);
            }
          },
          builder: (context, state) {
            final bloc = context.read<ProfileBloc>();
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                toolbarHeight: 120,
                title: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => NotificationsPage(
                              context.read<ProfileBloc>().state.isBuyer),
                        ));
                      },
                      child: SvgPicture.asset(
                        'assets/notification_outline_dot.svg',
                        height: 24,
                        width: 24,
                        color: context.read<ProfileBloc>().state.isBuyer
                            ? ColorSet.colorPrimaryGreen
                            : ColorSet.brown1,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/white_icon.svg',
                            color: context.read<ProfileBloc>().state.isBuyer
                                ? ColorSet.colorPrimaryGreen
                                : ColorSet.brown1,
                          ),
                          SvgPicture.asset(
                            'assets/Group.svg',
                            color: context.read<ProfileBloc>().state.isBuyer
                                ? ColorSet.colorPrimaryGreen
                                : ColorSet.brown1,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              body: ListView(
                children: [
                  ListTile(
                    title: Text(
                      'Ajustes',
                      style: TextStyle(
                        color: context.read<ProfileBloc>().state.isBuyer
                            ? ColorSet.colorPrimaryGreen
                            : ColorSet.brown1,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 32,
                      backgroundColor: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                      foregroundImage: NetworkImage(
                        context
                                .read<ProfileBloc>()
                                .state
                                .user
                                ?.mediumAvatar
                                ?.value
                                .getOrElse(() => '') ??
                            '',
                      ),
                    ),
                    title: Text.rich(
                      TextSpan(
                        text: 'Olá, ',
                        children: [
                          TextSpan(
                            text: context
                                .read<ProfileBloc>()
                                .state
                                .user
                                ?.nickname,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () async {
                      await Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (context) => const EditFullNamePage(),
                        ),
                      );
                      bloc.add(const ProfileEvent.started());
                    },
                    leading: SvgPicture.asset(
                      'assets/account_circle.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Nome',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      context.read<ProfileBloc>().state.user?.name ?? '',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    onTap: () async {
                      await Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                          builder: (context) => const EditEmailPage(),
                        ),
                      );
                      bloc.add(const ProfileEvent.started());
                    },
                    leading: SvgPicture.asset(
                      'assets/email.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    subtitle: Text(
                      context.read<ProfileBloc>().state.user?.email ??
                          'Nenhum cadastrado',
                    ),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/notifications_active.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Receber Notificações',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    trailing: Switch(
                      value: state.displayNotifications,
                      onChanged: (value) {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext dialogContext) => Dialog(
                            child: ListView(
                              shrinkWrap: true,
                              children: [
                                const Divider(),
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.amber[400],
                                  child: const Text(
                                    '!',
                                    style: TextStyle(
                                        fontSize: 40,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Divider(),
                                const Center(
                                  child: Text('A aplicação será reiniciada',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                const Divider(height: 8),
                                const Center(
                                  child: SizedBox(
                                    width: 180,
                                    child: Text(
                                      'Deseja continuar?',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Divider(height: 8),
                                Container(height: 1, color: ColorSet.grayLine),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(dialogContext),
                                      child: const Text(
                                        'Voltar',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: ColorSet.grayDark,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(dialogContext);
                                        context.read<ProfileBloc>().add(
                                              ProfileEvent
                                                  .onNotificationSwitchTapped(
                                                      value),
                                            );
                                      },
                                      child: const Text(
                                        'Sim',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: ColorSet.grayDark,
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: ColorSet.grayLine,
                  ),
                  ListTile(
                    onTap: () {
                      if (context.read<ProfileBloc>().state.isBuyer) {
                        context.read<BuyerMenuBloc>().add(
                              const BuyerMenuEvent.navToSellerTapped(),
                            );
                      } else {
                        context.read<SellerMenuBloc>().add(
                              const SellerMenuEvent.navToBuyerTapped(),
                            );
                      }
                    },
                    leading: SvgPicture.asset(
                      'assets/devices.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: Text(
                      context.read<ProfileBloc>().state.isBuyer
                          ? 'Quero vender no app!'
                          : 'Quero comprar no app!',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Share.share(
                          'Venha participar do Conecta Campo.\n\n Download para iPhone: www.google.com \n\n Download para Android: www.google.com');
                    },
                    leading: Icon(
                      Icons.share,
                      size: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Convidar amigos',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/help.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Ajuda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(
                      'assets/security.svg',
                      width: 24,
                      height: 24,
                      color: context.read<ProfileBloc>().state.isBuyer
                          ? ColorSet.colorPrimaryGreen
                          : ColorSet.brown1,
                    ),
                    title: const Text(
                      'Termos e Privacidade',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
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
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
