import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/application/seller/menu/seller_menu_bloc.dart';
import 'package:conectacampo/application/seller/reservation/seller_reservation_bloc.dart';
import 'package:conectacampo/application/seller/reservation_summary/summary_reservations_bloc.dart';
import 'package:conectacampo/application/seller/summary/seller_summary_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'edit_reservation.dart';

class SellerReservationWidget extends StatelessWidget {
  final Reservation reservation;
  final bool isExpanded;

  const SellerReservationWidget(this.reservation, {required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SellerReservationBloc>()
        ..add(SellerReservationEvent.started(reservation)),
      child: BlocConsumer<SellerReservationBloc, SellerReservationState>(
        listener: (context, state) async {
          if (state.reservationToEdit != null) {
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    EditReservationPage(state.reservationToEdit!),
              ),
            );
            context
                .read<SellerReservationBloc>()
                .add(SellerReservationEvent.started(reservation));
          }

          if (state.loading) {
            EasyLoading.show(status: 'Aguarde', dismissOnTap: true);
          } else {
            EasyLoading.dismiss();
          }
        },
        builder: (context, state) => SizedBox(
          width: 320,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
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
                      CircleAvatar(
                        radius: 36,
                        backgroundColor: ColorSet.green1,
                        foregroundImage: CachedNetworkImageProvider(
                          state.reservation?.buyer.thumbAvatar?.getOrCrash() ??
                              'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png',
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.reservation?.buyer.nickname ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Feira do dia: ${state.advertisement?.deliveryAt.getDateAndMonthName() ?? '--'}',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
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
                const SizedBox(height: 10),
                SizedBox(
                  child: Visibility(
                      visible: isExpanded,
                      child: SizedBox(
                        height: 214,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            children: [
                              Visibility(
                                visible: state.reservation?.status ==
                                        ReservationStatus.awaitingBuyer ||
                                    state.reservation?.status ==
                                        ReservationStatus.pendingSeller ||
                                    state.reservation?.status ==
                                        ReservationStatus.confirmed,
                                child: ListView(
                                  shrinkWrap: true,
                                  physics: const ClampingScrollPhysics(),
                                  children: [
                                    MaterialButton(
                                      onPressed: () {
                                        context
                                            .read<SellerReservationBloc>()
                                            .add(
                                              const SellerReservationEvent
                                                  .onCancel(),
                                            );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        padding: const EdgeInsets.fromLTRB(
                                          50,
                                          10,
                                          50,
                                          10,
                                        ),
                                        decoration: const BoxDecoration(
                                          color: ColorSet.red1,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(20),
                                          ),
                                        ),
                                        child: const Text(
                                          'Cancelar Pedido',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              if (state.reservation?.status ==
                                  ReservationStatus.pendingSeller)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SellerReservationBloc>().add(
                                          const SellerReservationEvent
                                              .onConfirm(),
                                        );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.fromLTRB(
                                      10,
                                      10,
                                      10,
                                      10,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: ColorSet.green1,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      'Confirmar Pedido',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              if (state.reservation?.status ==
                                  ReservationStatus.confirmed)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SellerReservationBloc>().add(
                                          const SellerReservationEvent
                                              .onConfirmPayment(),
                                        );
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 10, 10, 10),
                                    decoration: const BoxDecoration(
                                      color: ColorSet.blue1,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      'Confirmar Pagamento',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              const SizedBox(height: 20),
                              GestureDetector(
                                onTap: () {
                                  context
                                      .read<SellerReservationBloc>()
                                      .add(
                                    SellerReservationEvent
                                        .reservationEditItemsTap(
                                      state.reservation,
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Alterar itens',
                                  style: TextStyle(
                                    color: ColorSet.brown1,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Text('Itens',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: ColorSet.brown1,
                                  )),
                              SizedBox(
                                height: 60,
                                child: ListView.builder(
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
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
                Container(
                  height: 1,
                  color: ColorSet.gray10,
                ),
                InkWell(
                  onTap: () {
                    context
                        .read<SellerReservationBloc>()
                        .add(const SellerReservationEvent.showItemsTapped());

                    context.read<SummaryReservationsBloc>().add(
                          SummaryReservationsEvent.onItemExpandTap(
                            isExpanded: !isExpanded,
                          ),
                        );
                  },
                  child: SizedBox(
                    height: 40,
                    child: Stack(
                      children: [
                        Align(
                          child: Text(
                            isExpanded ? 'Itens' : 'Ver itens',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              isExpanded
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
            ),
          ),
        ),
      ),
    );
  }

  Widget _getStatusText(Reservation? reservation) {
    final String text;

    if (reservation != null) {
      switch (reservation.status) {
        case ReservationStatus.pendingSeller:
          text = '? Pendente';
          break;
        case ReservationStatus.buyerCanceled:
          text = 'x Cancelado pelo comprador';
          break;
        case ReservationStatus.sellerCanceled:
          text = 'x Cancelado';
          break;
        case ReservationStatus.awaitingBuyer:
          text = '! Aguardando confirmação';
          break;
        case ReservationStatus.confirmed:
          text = '✓ Confirmado';
          break;
        case ReservationStatus.paid:
          text = '✓ Pago';
          break;
        default:
          text = '? Pendente';
      }
    } else {
      text = 'Carregando';
    }

    return Text.rich(
      TextSpan(
        text: 'Status do pedido ',
        style: const TextStyle(color: Colors.white, fontSize: 12),
        children: [
          TextSpan(
              text: text, style: const TextStyle(fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  Color _getStatusColor(Reservation? reservation) {
    if (reservation != null) {
      switch (reservation.status) {
        case ReservationStatus.awaitingBuyer:
          return ColorSet.yellow2;
        case ReservationStatus.pendingSeller:
          return ColorSet.gray2;
        case ReservationStatus.buyerCanceled:
          return ColorSet.orange2;
        case ReservationStatus.sellerCanceled:
          return ColorSet.orange2;
        case ReservationStatus.confirmed:
          return ColorSet.green1;
        case ReservationStatus.paid:
          return ColorSet.blue1;
      }
    } else {
      return ColorSet.gray2;
    }
  }
}
