import 'package:conectacampo/application/seller/reservation_summary/summary_reservations_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/buyer/search/search_page.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/reservation/seller_reservation_widget.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../seller_main_page.dart';

class ReservationsSummaryPage extends StatelessWidget {
  const ReservationsSummaryPage(this.navigatorKey);

  final GlobalKey navigatorKey;

  @override
  Widget build(BuildContext context) {
    setupNotifications(context);
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          settings: settings,
          builder: (context) =>
              BlocConsumer<SummaryReservationsBloc, SummaryReservationsState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final List<Reservation> list = context
                      .read<SummaryReservationsBloc>()
                      .state
                      .optionOfReservationsFailureOrSuccess
                      .fold(() => [], (a) => a.fold((l) => [], (r) => r));

                  return Scaffold(
                    appBar: SellerDefaultAppBar(),
                    body: state.loading
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : Padding(
                            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                            child: RefreshIndicator(
                              onRefresh: () async {
                                context.read<SummaryReservationsBloc>().add(
                                    const SummaryReservationsEvent.started());
                              },
                              child: ListView(
                                children: [
                                  const Text(
                                    'Administrar Reservas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: ColorSet.brown1,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  if (list.isEmpty)
                                    const Card(
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Text.rich(TextSpan(children: [
                                          TextSpan(
                                              text: 'Sem reservas',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                            text:
                                                '\nAguarde contato do cliente',
                                          )
                                        ])),
                                      ),
                                    )
                                  else
                                    ListView.separated(
                                        shrinkWrap: true,
                                        physics: const ClampingScrollPhysics(),
                                        itemBuilder: (context, index) =>
                                            SellerReservationWidget(
                                                list[index].copyWith()),
                                        separatorBuilder: (context, index) =>
                                            const Divider(),
                                        itemCount: list.length)
                                ],
                              ),
                            ),
                          ),
                  );
                },
              )),
    );
  }

  void setupNotifications(BuildContext context) async {
    await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      context
          .read<SummaryReservationsBloc>()
          .add(const SummaryReservationsEvent.started());
    });
  }
}
