import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerReservationWidget extends StatelessWidget {
  final Reservation reservation;

  const SellerReservationWidget(this.reservation);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationBloc, ReservationState>(
        builder: (context, state) => Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Container(
                    height: 40,
                    color: _getStatusColor(reservation),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
                      child: Center(
                        child: _getStatusText(reservation),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Container(
                          width: 72.0,
                          height: 72.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(reservation
                                          .buyer.mediumAvatar?.value
                                          .fold((l) => '', (r) => r) ??
                                      '')))),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            reservation.buyer.name.getOrCrash() ?? '',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(height: 8),
                          Text.rich(TextSpan(text: 'Placa: ', children: [
                            TextSpan(
                                text:
                                    reservation.buyer.vehicleLicensePlate ?? '',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold))
                          ]))
                        ],
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                      decoration: const BoxDecoration(
                        color: ColorSet.gray10,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        child: FittedBox(
                          child: Row(
                            children: [
                              const Text(
                                'Fale com o comprador',
                                style: TextStyle(
                                    color: ColorSet.green1,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                'assets/whatsapp.svg',
                                height: 18,
                                width: 18,
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  child: Visibility(
                      visible: state.isItemsVisible,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Itens',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: ColorSet.brown1,
                                )),
                            ListView.builder(
                              physics: const ClampingScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (itemBuilder, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    '${reservation.productReservations[index].adProduct.name} • ${reservation.productReservations[index].quantity} ${reservation.productReservations[index].adProduct.unitMeasure}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                );
                              },
                              itemCount: reservation.productReservations.length,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            GestureDetector(
                                onTap: () {
                                  context.read<SellerMenuBloc>().add(
                                      SellerMenuEvent.reservationEditItemsTap(
                                          reservation));
                                },
                                child: const Text('Alterar itens',
                                    style: TextStyle(
                                        color: ColorSet.brown1,
                                        fontSize: 12,
                                        decoration: TextDecoration.underline))),
                            const SizedBox(
                              height: 50,
                            ),
                            Visibility(
                                visible: reservation.getStatusFromItems() ==
                                    ReservationItemStatus.awaitingBuyer,
                                child: Column(
                                  children: [
                                    const Text('❗ Atenção!',
                                        style: TextStyle(
                                            color: ColorSet.yellow2,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline)),
                                    const SizedBox(height: 8),
                                    const SizedBox(height: 40),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              50, 10, 50, 10),
                                          decoration: const BoxDecoration(
                                              color: ColorSet.red1Alpha,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          child: const Text('Cancelar Pedido',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorSet.red1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      )),
                ),
                Container(
                  height: 1,
                  color: ColorSet.gray10,
                ),
                GestureDetector(
                  onTap: () {
                    context
                        .read<ReservationBloc>()
                        .add(const ReservationEvent.showItemsTapped());
                  },
                  child: SizedBox(
                    height: 40,
                    child: Stack(
                      children: [
                        Align(
                          child: Text(
                            state.isItemsVisible ? 'Itens' : 'Ver itens',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              state.isItemsVisible
                                  ? Icons.expand_less
                                  : Icons.expand_more,
                              size: 32,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  Widget _getStatusText(Reservation reservation) {
    final String text;
    switch (reservation.getStatusFromItems()) {
      case ReservationItemStatus.pendingSeller:
        text = '? Pendente';
        break;
      case ReservationItemStatus.buyerCanceled:
        text = 'x Cancelado pelo comprador';
        break;
      case ReservationItemStatus.awaitingBuyer:
        text = '! Aguardando confirmação';
        break;
      case ReservationItemStatus.confirmed:
        text = '✓ Confirmado';
        break;
      case ReservationItemStatus.paid:
        text = '✓ Pago';
        break;
      default:
        text = '? Pendente';
    }
    return Text.rich(TextSpan(
        text: 'Status do pedido ',
        style: const TextStyle(color: Colors.white, fontSize: 12),
        children: [
          TextSpan(
              text: text, style: const TextStyle(fontWeight: FontWeight.bold))
        ]));
  }

  Color _getStatusColor(Reservation reservation) {
    switch (reservation.getStatusFromItems()) {
      case ReservationItemStatus.awaitingBuyer:
        return ColorSet.yellow2;
      case ReservationItemStatus.pendingSeller:
        return ColorSet.gray2;
      case ReservationItemStatus.buyerCanceled:
        return ColorSet.orange2;
      case ReservationItemStatus.sellerCanceled:
        return ColorSet.gray2;
      case ReservationItemStatus.confirmed:
        return ColorSet.green1;
      case ReservationItemStatus.paid:
        return ColorSet.blue1;
    }
  }
}
