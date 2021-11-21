import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/profile/profile_bloc.dart';
import 'package:conectacampo/application/seller/adveretisements/seller_advertisements_bloc.dart';
import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/reservation/reservation_facade.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/buyer/reservation/single_reservation_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/notification/notification_helper.dart';
import 'package:conectacampo/presentation/notification/notifications_page.dart';
import 'package:conectacampo/presentation/profile/profile_page.dart';
import 'package:conectacampo/presentation/seller/menu/seller_summary.dart';
import 'package:conectacampo/presentation/seller/menu/widgets/seller_bottom_menu.dart';
import 'package:conectacampo/presentation/seller/new_advertisement/new_advertisement_page.dart';
import 'package:conectacampo/presentation/seller/reservation/edit_reservation.dart';
import 'package:conectacampo/presentation/seller/reservation/single_reservation_seller_page.dart';
import 'package:conectacampo/presentation/seller/reservations_summary/reservations_sumarry_page.dart';
import 'package:conectacampo/presentation/sign_in/places_page.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'group/seller_group_page.dart';

class SellerMainPage extends StatelessWidget {
  final Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
    4: GlobalKey<NavigatorState>(),
  };

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SellerMenuBloc>(
            create: (BuildContext context) =>
                getIt()..add(const SellerMenuEvent.started())),
        BlocProvider<SellerGroupBloc>(
            create: (BuildContext context) =>
                getIt()..add(const SellerGroupEvent.started())),
        BlocProvider<SellerSummaryBloc>(
            create: (BuildContext context) =>
                getIt()..add(const SellerSummaryEvent.started())),
        BlocProvider<ReservationBloc>(
            create: (context) =>
                getIt()..add(const ReservationEvent.started())),
        BlocProvider<SellerAdvertisementsBloc>(
            create: (context) =>
                getIt()..add(const SellerAdvertisementsEvent.started())),
        BlocProvider(
            create: (context) =>
                getIt<ProfileBloc>()..add(const ProfileEvent.started()))
      ],
      child: BlocConsumer<SellerMenuBloc, SellerMenuState>(
        listener: (context, state) async {
          if (state.reservationToOpen != null) {
            await openNotification(context, state.reservationToOpen!);
          }
          if (state.openEditReservation) {
            state.optionOfResevationToEdit.fold(() => null, (a) async {
              final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => EditReservationPage(a),
              ));
              context
                  .read<SellerSummaryBloc>()
                  .add(const SellerSummaryEvent.started());

              context
                  .read<SellerMenuBloc>()
                  .add(const SellerMenuEvent.editingEnd());
            });
          }

          if (context.read<SellerMenuBloc>().state.navToRoot) {
            navigatorKeys[state.currentIndex]!
                .currentState!
                .popUntil((r) => r.isFirst);
          }

          if (state.navToLogin) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/splash', (route) => false);
          }

          if (state.navToBuyer) {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => BuyerMainPage(),
                ),
                (route) => false);
          }

          if (state.reTapIndex != -1) {
            navigatorKeys[state.reTapIndex]!
                .currentState!
                .popUntil((r) => r.isFirst);
          }
        },
        builder: (context, state) {
          setupNotifications(context);
          return Stack(
            children: [
              Scaffold(
                backgroundColor: ColorSet.textFieldGrayBackground,
                bottomNavigationBar: SellerBottomMenu(),
                body: WillPopScope(
                  onWillPop: () async {
                    final key = navigatorKeys[
                        context.read<SellerMenuBloc>().state.currentIndex]!;
                    final popped =
                        await Navigator.maybePop(key.currentState!.context);
                    if (!popped) {
                      if (state.currentIndex != 0) {
                        context
                            .read<SellerMenuBloc>()
                            .add(const SellerMenuEvent.homeTapped());
                        return false;
                      } else {
                        return true;
                      }
                    } else {
                      return false;
                    }
                  },
                  child: IndexedStack(
                    index: context.read<SellerMenuBloc>().state.currentIndex,
                    children: [
                      SellerSummary(navigatorKeys[0]!),
                      SellerGroupPage(navigatorKeys[1]!),
                      Scaffold(body: Text('Reservas')),
                      ReservationsSummaryPage(navigatorKeys[3]!),
                      ProfilePage(
                        navigatorKeys[4]!,
                      )
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
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => NewAdvertisementPage(),
                            ),
                          );
                        },
                        child: Container(
                          width: 68.0,
                          height: 68.0,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: ColorSet.brown1,
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
              ),
            ],
          );
        },
      ),
    );
  }

  void setupNotifications(BuildContext context) {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        title: message.notification?.title,
        message: message.notification?.body,
        duration: const Duration(seconds: 3),
        mainButton: TextButton(
          onPressed: () async {
            final notificable = message.data["notificable"] as String;

            final reservationId = jsonDecode(notificable)["id"] as int;
            final reservation =
                await ReservationFacade().getReservation(reservationId);
            final kind = message.data["kind"] as String;
            reservation.fold((l) => null, (r) {
              openNotification(context, ReservationToOpen(kind, r));
            });
          },
          child: const Text(
            'Vizualizar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ).show(context);
    });
  }
}

class SellerDefaultAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: BlocBuilder<SellerMenuBloc, SellerMenuState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.fromLTRB(20, 32, 20, 8),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => NotificationsPage(context.read<ProfileBloc>().state.isBuyer),
                          ));
                        },
                        icon: const Icon(Icons.notifications_none_outlined)),
                    const SizedBox(width: 24),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              state.optionOfUser.fold(
                                  () => '',
                                  (a) => a.fold(
                                      (l) => '',
                                      (r) => r.nickname ?? '')),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold)),
                          const SizedBox(width: 24),
                          CircleAvatar(
                              radius: 16.0,
                              foregroundImage: NetworkImage(state.optionOfUser
                                  .fold(
                                      () => '',
                                      (a) => a.fold(
                                          (l) => '',
                                          (r) =>
                                              r.thumbAvatar?.value
                                                  .getOrElse(() => '') ??
                                              ''))))
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 24),
                GestureDetector(
                  onTap: () async {
                    final success = await Navigator.push<Unit>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PlacesPage(),
                        ));
                    if (success != null) {
                      context
                          .read<SellerMenuBloc>()
                          .add(const SellerMenuEvent.placeChanged());
                    }
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/location_outline.svg',
                        width: 16,
                        height: 16,
                        color: ColorSet.grayLine,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Flexible(
                        child: Text.rich(
                          TextSpan(children: [
                            const TextSpan(
                              text: 'Entrega em: ',
                              style: TextStyle(color: ColorSet.gray2),
                            ),
                            TextSpan(
                              text: state.optionOfPlace
                                  .fold(() => '', (a) => a.name),
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.gray2,
                              ),
                            ),
                          ]),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 130);
}
