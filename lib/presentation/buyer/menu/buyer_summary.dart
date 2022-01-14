import 'dart:convert';

import 'package:another_flushbar/flushbar.dart';
import 'package:conectacampo/application/buyer/adivertisements/adivertisements_bloc.dart';
import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/buyer/summary/summary_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/reservation/reservation_facade.dart';
import 'package:conectacampo/presentation/buyer/buyer_main_page.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:conectacampo/presentation/commom/invite_widget.dart';
import 'package:conectacampo/presentation/commom/prohort_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/notification/notification_helper.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';

class BuyerSummary extends StatelessWidget {
  final GlobalKey navigatorKey;

  const BuyerSummary(this.navigatorKey);

  @override
  Widget build(BuildContext context) {
    setupNotifications(context);
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (context) {
            return Scaffold(
              appBar: SearchWidget(),
              body: BlocConsumer<SummaryBloc, SummaryState>(
                listener: (context, state) {
                  if (state.openSearch) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (builder) => SearchPage(),
                      ),
                    );
                  }

                  state.optionOfReservationCancelFailureOrSuccess.fold(
                    () => null,
                    (a) => a.fold(
                        (l) => l.maybeMap(
                              orElse: () {},
                              serverError: (s) {
                                EasyLoading.showError(
                                  'Algo errado ocorreu',
                                );
                              },
                            ), (r) {
                      context.read<GroupBloc>().add(const GroupEvent.started());
                      context
                          .read<ReservationBloc>()
                          .add(const ReservationEvent.started());

                      EasyLoading.showSuccess(
                        'Reserva cancelada com sucesso!',
                        duration: const Duration(seconds: 2),
                      );
                    }),
                  );
                },
                builder: (context, state) => RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<AdvertisementsBloc>()
                        .add(const AdvertisementsEvent.started());

                    context
                        .read<ReservationBloc>()
                        .add(const ReservationEvent.started());

                    context.read<GroupBloc>().add(const GroupEvent.started());
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                         InviteWidget(isBuyer: true),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Administrar Reservas',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorSet.greenTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const BuyerReservationsListWidget(),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Meus grupos',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorSet.greenTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<AdvertisementsBloc, AdvertisementsState>(
                          builder: (context, state) {
                            return state.groupsAdsFailureOrSuccess
                                .fold((l) => const Text('Erro'), (r) {
                              if (r.isEmpty) {
                                return const NoGroupsAddedWidget();
                              } else {
                                return AdvertisementList(
                                  isSearch: false,
                                  isGroup: true,
                                  advertisements:
                                      (r.length > 3 ? r.sublist(0, 2) : r)
                                          .map((e) => UIAdvertisement(true, e))
                                          .toList(),
                                );
                              }
                            });
                          },
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          'Últimos anúncios',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: ColorSet.greenTextColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        BlocBuilder<AdvertisementsBloc, AdvertisementsState>(
                          builder: (context, state) {
                            return state.adsFailureOrSuccess.fold(
                              (l) => const Text('Erro'),
                              (r) => r.isEmpty
                                  ? const Card(
                                      child: Padding(
                                        padding: EdgeInsets.all(32.0),
                                        child: Text(
                                          'Nenhuma feira encontrada',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    )
                                  : AdvertisementList(
                                      isSearch: false,
                                      isGroup: false,
                                      advertisements: r
                                          .map(
                                            (e) => UIAdvertisement(false, e),
                                          )
                                          .toList(),
                                    ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        const ProhortWidget(),
                        const SizedBox(
                          height: 32,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> setupNotifications(BuildContext context) async {
    await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Flushbar(
        flushbarPosition: FlushbarPosition.TOP,
        titleSize: 16,
        title: message.notification?.title,
        message: message.notification?.body,
        duration: const Duration(seconds: 10),
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
            'Visualizar',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ).show(context);
    });
  }
}



class NoGroupsAddedWidget extends StatelessWidget {
  const NoGroupsAddedWidget();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (builder) => SearchPage()));
        },
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Sem grupos',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('Procurar grupo de produtores')
                ],
              ),
              const Spacer(),
              SvgPicture.asset(
                'assets/coolicon.svg',
                width: 21,
                height: 21,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuyerReservationsListWidget extends StatelessWidget {
  const BuyerReservationsListWidget();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationBloc, ReservationState>(
      builder: (context, state) {
        final List<Reservation> list = state
            .optionOfReservationListFailureOrSuccess
            .fold(() => [], (a) => a.fold((l) => [], (r) => r));
        final size = list.length;

        final finalWidget = list.isEmpty
            ? Card(
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (builder) => SearchPage()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Sem itens na sua feira!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text('Fazer novo pedido')
                          ],
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/coolicon.svg',
                          width: 21,
                          height: 21,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : SizedBox(
                height: state.isItemsVisible ? 530 : 300,
                width: double.infinity,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) => ReservationWidget(
                    list[index],
                    state.isItemsVisible,
                  ),
                  separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
                  itemCount: size,
                ),
              );
        return finalWidget;
      },
    );
  }
}
