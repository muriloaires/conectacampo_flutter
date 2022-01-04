import 'package:conectacampo/application/buyer/reservation/reservation_bloc.dart';
import 'package:conectacampo/application/buyer/reservation/single_reservation/single_reservation_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReservationWidget extends StatelessWidget {
  final Reservation reservation;
  final bool isExpanded;

  const ReservationWidget(this.reservation, this.isExpanded);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleReservationBloc>(
      create: (context) =>
          getIt()..add(SingleReservationEvent.started(reservation)),
      child: BlocConsumer<SingleReservationBloc, SingleReservationState>(
        listener: (context, state) {
          if (state.canceling) {
            EasyLoading.show(status: 'Cancelando Reserva', dismissOnTap: true);
          } else {
            EasyLoading.dismiss();
          }

          state.cancelFailureOrSuccess?.fold(
            (l) => EasyLoading.showError(
              'Não foi possível cancelar a reserva, tente novamente mais tarde.',
              duration: const Duration(seconds: 3),
              dismissOnTap: true,
            ),
            (r) => context
                .read<ReservationBloc>()
                .add(const ReservationEvent.started()),
          );

          if (state.showAcceptError) {
            EasyLoading.showError(
              "Erro ao aceitar produto",
              duration: const Duration(seconds: 2),
            );
            context
                .read<SingleReservationBloc>()
                .add(const SingleReservationEvent.onAcceptErrorDisplayed());
          }

          if (state.showAcceptError) {
            EasyLoading.showError(
              "Erro ao cancelar produto",
              duration: const Duration(seconds: 2),
            );
            context
                .read<SingleReservationBloc>()
                .add(const SingleReservationEvent.onCancelErrorDisplayed());
          }
        },
        builder: (context, state) => SizedBox(
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Container(
                    height: 40,
                    color: _getStatusColor(state.reservation),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                      child: FittedBox(
                        child: Center(
                          child: _getStatusText(state.reservation),
                        ),
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
                        foregroundImage: NetworkImage(
                          state.reservation?.seller?.mediumAvatar?.value
                                  .fold((l) => '', (r) => r) ??
                              '',
                        ),
                        backgroundColor: ColorSet.green1,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            state.reservation?.seller?.nickname ?? '',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text.rich(
                            TextSpan(
                              text: state.adFailureOrSuccess?.fold(
                                (l) => '',
                                (r) => r.meetingType,
                              ),
                              children: [
                                const TextSpan(text: ' '),
                                TextSpan(
                                  text: state.adFailureOrSuccess?.fold(
                                    (l) => '',
                                    (r) => r.meetingTypeDescription,
                                  ),
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Feira do dia: ${state.adFailureOrSuccess?.fold((l) => '--', (r) => r.deliveryAt.getDateAndMonthName()) ?? '--'}',
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () async {
                    await openWhatsapp(reservation.seller?.phoneNumber ?? '');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      color: ColorSet.gray10,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: FittedBox(
                        child: Row(
                          children: [
                            const Text(
                              'Fale com o vendedor',
                              style: TextStyle(
                                color: ColorSet.green1,
                                fontWeight: FontWeight.bold,
                              ),
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
                    ),
                  ),
                ),
                Visibility(
                  visible: isExpanded,
                  child: SizedBox(
                    height: 230,
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
                            child: Column(
                              children: [
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SingleReservationBloc>().add(
                                          const SingleReservationEvent
                                              .onCancelReservationPressed(),
                                        );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                      50,
                                      10,
                                      50,
                                      10,
                                    ),
                                    decoration: const BoxDecoration(
                                      color: ColorSet.red1Alpha,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: const Text(
                                      'Cancelar Pedido',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorSet.red1,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Visibility(
                            visible: state.reservation != null &&
                                getReservationStatus(state.reservation!) ==
                                    ReservationStatus.awaitingBuyer,
                            child: ListView(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              children: [
                                const Center(
                                  child: Text(
                                    '❗ Atenção!',
                                    style: TextStyle(
                                      color: ColorSet.yellow2,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                ListView.separated(
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 8),
                                  physics: const ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (itemBuilder, index) {
                                    final list =
                                        state.reservation?.productReservations
                                            .where(
                                              (element) =>
                                                  element.status ==
                                                  ReservationItemStatus
                                                      .awaitingBuyer,
                                            )
                                            .toList();
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          list?[index].adProduct.name ?? '',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Só tem ${list?[index].quantity} ${list?[index].adProduct.unitMeasure} disponível(eis). Aceitar?',
                                          style: const TextStyle(),
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          SingleReservationBloc>()
                                                      .add(
                                                        SingleReservationEvent
                                                            .onCancelPressed(
                                                          index,
                                                        ),
                                                      );
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                    0,
                                                    8,
                                                    0,
                                                    8,
                                                  ),
                                                  width: double.infinity,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: ColorSet.red1Alpha,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Cancelar',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorSet.red1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: MaterialButton(
                                                onPressed: () {
                                                  context
                                                      .read<
                                                          SingleReservationBloc>()
                                                      .add(
                                                        SingleReservationEvent
                                                            .onAcceptPressed(
                                                          index,
                                                        ),
                                                      );
                                                },
                                                child: Container(
                                                  padding:
                                                      const EdgeInsets.fromLTRB(
                                                    0,
                                                    8,
                                                    0,
                                                    8,
                                                  ),
                                                  width: double.infinity,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: ColorSet.green1Alpha,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                  ),
                                                  child: const Text(
                                                    'Aceitar',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: ColorSet.green1,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    );
                                  },
                                  itemCount:
                                      state.reservation?.productReservations
                                              .where(
                                                (element) =>
                                                    element.status ==
                                                    ReservationItemStatus
                                                        .awaitingBuyer,
                                              )
                                              .toList()
                                              .length ??
                                          0,
                                ),
                                const SizedBox(height: 40),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'Itens',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: ColorSet.colorPrimaryGreen,
                            ),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const ClampingScrollPhysics(),
                            itemBuilder: (itemBuilder, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${state.reservation?.productReservations[index].adProduct.name} ${state.reservation?.productReservations[index].adProduct.kind} ${state.reservation?.productReservations[index].adProduct.rating} • ${state.reservation?.productReservations[index].quantity} ${state.reservation?.productReservations[index].adProduct.unitMeasure}(s)',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              );
                            },
                            itemCount:
                                state.reservation?.productReservations.length ??
                                    0,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: ColorSet.gray10,
                ),
                InkWell(
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

  ReservationStatus getReservationStatus(Reservation reservation) {
    if (reservation.productReservations
        .where(
            (element) => element.status == ReservationItemStatus.awaitingBuyer)
        .isNotEmpty) {
      return ReservationStatus.awaitingBuyer;
    }

    return reservation.status;
  }

  Widget _getStatusText(Reservation? reservation) {
    final String text;
    String iconText;

    if (reservation != null) {
      if (reservation.productReservations
          .where((element) =>
              element.status == ReservationItemStatus.awaitingBuyer)
          .isNotEmpty) {
        text = 'Aguardando confirmação';
        iconText = '!';
      } else {
        switch (reservation.status) {
          case ReservationStatus.pendingSeller:
            text = 'Pendente';
            iconText = '?';
            break;
          case ReservationStatus.buyerCanceled:
            text = 'Cancelado';
            iconText = 'x';
            break;
          case ReservationStatus.awaitingBuyer:
            text = 'Aguardando confirmação';
            iconText = '!';
            break;
          case ReservationStatus.confirmed:
            text = 'Confirmado';
            iconText = '✓';
            break;
          case ReservationStatus.paid:
            text = 'Pago';
            iconText = '✓';
            break;
          case ReservationStatus.sellerCanceled:
            text = 'Cancelado';
            iconText = 'x';
            break;
          default:
            text = 'Pendente';
            iconText = '?';
        }
      }
    } else {
      text = 'Carregando';
      iconText = '';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Status do pedido',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        const SizedBox(
          width: 2,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 8,
          child: Text(
            iconText,
            style: TextStyle(
                fontSize: 12,
                color: _getStatusColor(reservation),
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 12,
          ),
        ),
      ],
    );
  }

  Color _getStatusColor(Reservation? reservation) {
    if (reservation != null) {
      if (reservation.productReservations
          .where(
            (element) => element.status == ReservationItemStatus.awaitingBuyer,
          )
          .isNotEmpty) {
        return ColorSet.yellow2;
      }

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
