import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/reservation/seller_reservation_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerReservationWidget extends StatelessWidget {
  final Reservation reservation;

  const SellerReservationWidget(this.reservation);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SellerReservationBloc>()
        ..add(SellerReservationEvent.started(reservation)),
      child: BlocBuilder<SellerReservationBloc, SellerReservationState>(
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
                      height: 45,
                      color: _getStatusColor(state.reservation),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                        child: Center(
                          child: _getStatusText(state.reservation),
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
                                    image: NetworkImage(state.reservation?.buyer
                                            .mediumAvatar?.value
                                            .fold((l) => '', (r) => r) ??
                                        '')))),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.reservation?.buyer.name ?? '',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(height: 8),
                            Text.rich(TextSpan(text: 'Placa: ', children: [
                              TextSpan(
                                  text: state.reservation?.buyer
                                          .vehicleLicensePlate ??
                                      '',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]))
                          ],
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      await openWhatsapp(reservation.buyer.phoneNumber ?? '');
                    },
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
                                      '${state.reservation?.productReservations[index].adProduct.name} • ${state.reservation?.productReservations[index].quantity} ${state.reservation?.productReservations[index].adProduct.unitMeasure}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  );
                                },
                                itemCount: state
                                    .reservation?.productReservations.length,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    context.read<SellerMenuBloc>().add(
                                        SellerMenuEvent.reservationEditItemsTap(
                                            state.reservation));
                                  },
                                  child: const Text('Alterar itens',
                                      style: TextStyle(
                                          color: ColorSet.brown1,
                                          fontSize: 12,
                                          decoration:
                                              TextDecoration.underline))),
                              const SizedBox(height: 20),
                              if (state.reservation?.getStatusFromItems() !=
                                      ReservationItemStatus.buyerCanceled &&
                                  state.reservation?.getStatusFromItems() !=
                                      ReservationItemStatus.sellerCanceled)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SellerReservationBloc>().add(
                                        const SellerReservationEvent
                                            .onCancel());
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 10, 50, 10),
                                    decoration: const BoxDecoration(
                                        color: ColorSet.red1,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Text('Cancelar Pedido',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ),
                              if (state.reservation?.getStatusFromItems() ==
                                  ReservationItemStatus.pendingSeller)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SellerReservationBloc>().add(
                                        const SellerReservationEvent
                                            .onConfirm());
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 10, 50, 10),
                                    decoration: const BoxDecoration(
                                        color: ColorSet.green1,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Text('Confirmar Pedido',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                ),
                              if (state.reservation?.getStatusFromItems() ==
                                  ReservationItemStatus.confirmed)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SellerReservationBloc>().add(
                                        const SellerReservationEvent
                                            .onConfirmPayment());
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 10, 50, 10),
                                    decoration: const BoxDecoration(
                                        color: ColorSet.blue1,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: const Text('Confirmar Pagamento',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                  ),
                                )
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
                          .read<SellerReservationBloc>()
                          .add(const SellerReservationEvent.showItemsTapped());
                    },
                    child: SizedBox(
                      height: 40,
                      child: Stack(
                        children: [
                          Align(
                            child: Text(
                              state.isItemsVisible ? 'Itens' : 'Ver itens',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
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
              ))),
    );
  }

  Widget _getStatusText(Reservation? reservation) {
    final String text;

    if (reservation != null) {
      switch (reservation.getStatusFromItems()) {
        case ReservationItemStatus.pendingSeller:
          text = '? Pendente';
          break;
        case ReservationItemStatus.buyerCanceled:
          text = 'x Cancelado pelo comprador';
          break;
        case ReservationItemStatus.sellerCanceled:
          text = 'x Cancelado';
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
    } else {
      text = 'Carregando';
    }

    return Text.rich(TextSpan(
        text: 'Status do pedido ',
        style: const TextStyle(color: Colors.white, fontSize: 12),
        children: [
          TextSpan(
              text: text, style: const TextStyle(fontWeight: FontWeight.bold))
        ]));
  }

  Color _getStatusColor(Reservation? reservation) {
    if (reservation != null) {
      switch (reservation.getStatusFromItems()) {
        case ReservationItemStatus.awaitingBuyer:
          return ColorSet.yellow2;
        case ReservationItemStatus.pendingSeller:
          return ColorSet.gray2;
        case ReservationItemStatus.buyerCanceled:
          return ColorSet.orange2;
        case ReservationItemStatus.sellerCanceled:
          return ColorSet.orange2;
        case ReservationItemStatus.confirmed:
          return ColorSet.green1;
        case ReservationItemStatus.paid:
          return ColorSet.blue1;
      }
    } else {
      return ColorSet.gray2;
    }
  }
}
