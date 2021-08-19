import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class BuyerResevationsPage extends StatelessWidget {
  final GlobalKey navigatorKey;

  const BuyerResevationsPage(this.navigatorKey);
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
              final finalWidget = list.isEmpty
                  ? Card(
                      margin: const EdgeInsets.all(0),
                      child: Padding(
                        padding: const EdgeInsets.all(32),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            const SizedBox(
                              width: 32,
                            ),
                            SvgPicture.asset(
                              'assets/coolicon.svg',
                              width: 21,
                              height: 21,
                            ),
                          ],
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
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: size),
                    );
              return finalWidget;
            },
          ),
        ),
      ),
    );
  }
}
