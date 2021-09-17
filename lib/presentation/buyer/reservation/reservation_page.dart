import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../buyer_main_page.dart';

class BuyerReservationsPage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const BuyerReservationsPage(this.navigatorKey);
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
        settings: settings,
        builder: (context) => Scaffold(
          body: BlocConsumer<ReservationBloc, ReservationState>(
            listener: (context, state) {},
            builder: (context, state) {
              final List<Reservation> list = state
                  .optionOfReservationListFailureOrSuccess
                  .fold(() => [], (a) => a.fold((l) => [], (r) => r));
              int size = 0;
              if (list.length > 3) {
                size = 3;
              } else {
                size = list.length;
              }
              return Scaffold(
                  appBar: SearchWidget(),
                  body: list.isEmpty
                      ? SizedBox(
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {
                              context
                                  .read<BuyerMenuBloc>()
                                  .add(const BuyerMenuEvent.homeRetapped());
                            },
                            child: Card(
                              margin: const EdgeInsets.all(0),
                              child: Padding(
                                padding: const EdgeInsets.all(32),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: const [
                                        Text(
                                          'Sem itens na sua feira!',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text('Fazer novo pedido')
                                      ],
                                    ),
                                    SvgPicture.asset(
                                      'assets/coolicon.svg',
                                      width: 21,
                                      height: 21,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: ListView.separated(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemBuilder: (context, index) =>
                                  ReservationWidget(list[index]),
                              separatorBuilder: (context, index) =>
                                  const Divider(),
                              itemCount: size),
                        ));
            },
          ),
        ),
      ),
    );
  }
}
