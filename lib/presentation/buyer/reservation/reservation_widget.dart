import 'package:conectacampo/application/buyer/reservation/single_reservation/single_reservation_bloc.dart';
import 'package:conectacampo/application/buyer/summary/summary_bloc.dart';
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

  const ReservationWidget(this.reservation);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SingleReservationBloc>(
      create: (context) =>
          getIt()..add(SingleReservationEvent.started(reservation)),
      child: BlocConsumer<SingleReservationBloc, SingleReservationState>(
        listener: (context, state) {
          if (state.showAcceptError) {
            EasyLoading.showError("Erro ao aceitar produto",
                duration: const Duration(seconds: 2));
            context
                .read<SingleReservationBloc>()
                .add(const SingleReservationEvent.onAcceptErrorDisplayed());
          }

          if (state.showAcceptError) {
            EasyLoading.showError("Erro ao cancelar produto",
                duration: const Duration(seconds: 2));
            context
                .read<SingleReservationBloc>()
                .add(const SingleReservationEvent.onCancelErrorDisplayed());
          }
        },
        builder: (context, state) => Card(
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
                    topRight: Radius.circular(15)),
                child: Container(
                  height: 40,
                  color: _getStatusColor(state.reservation),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
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
                                    image: NetworkImage(state.reservation.seller
                                            ?.mediumAvatar?.value
                                            .fold((l) => '', (r) => r) ??
                                        '')))),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.reservation.seller?.nickname.getOrCrash() ?? '',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                            const SizedBox(height: 8),
                            Text.rich(TextSpan(
                                text: state.optionOfAdFailureOrSuccess.fold(
                              () => '',
                              (a) => a.fold(
                                (l) => '',
                                (r) => r.meetingType,
                              ),
                            ),
                            children: [
                              const TextSpan(text: ' '),
                              TextSpan(
                                text: state.optionOfAdFailureOrSuccess.fold(
                                  () => '',
                                  (a) => a.fold(
                                    (l) => '',
                                    (r) => r.meetingTypeDescription,
                                  ),
                                ),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                      ],
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  openWhatsapp(
                      reservation.seller?.phoneNumber.getOrCrash() ?? '');
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
                    visible: context
                        .read<SingleReservationBloc>()
                        .state
                        .isItemVisible,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: [
                          const Text('Itens',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: ColorSet.colorPrimaryGreen,
                              )),
                          ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (itemBuilder, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${state.reservation.productReservations[index].adProduct.name} ${state.reservation.productReservations[index].adProduct.kind} ${state.reservation.productReservations[index].adProduct.rating} • ${state.reservation.productReservations[index].quantity} ${state.reservation.productReservations[index].adProduct.unitMeasure}(s)',
                                  style: const TextStyle(fontSize: 12),
                                ),
                              );
                            },
                            itemCount:
                                state.reservation.productReservations.length,
                          ),
                          const SizedBox(height: 4),
                          const Text('Alterar itens',
                              style: TextStyle(
                                  color: ColorSet.colorPrimaryGreen,
                                  fontSize: 12,
                                  decoration: TextDecoration.underline)),
                          const SizedBox(height: 30),
                          Visibility(
                              visible: state.reservation.getStatusFromItems() ==
                                  ReservationItemStatus.awaitingBuyer,
                              child: ListView(
                                shrinkWrap: true,
                                physics: const ClampingScrollPhysics(),
                                children: [
                                  const Center(
                                    child: Text('❗ Atenção!',
                                        style: TextStyle(
                                                color: ColorSet.yellow2,
                                                fontSize: 14)),
                                      ),
                                      const SizedBox(height: 8),
                                      ListView.separated(
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(height: 8),
                                        physics: const ClampingScrollPhysics(),
                                        shrinkWrap: true,
                                        itemBuilder: (itemBuilder, index) {
                                          final list = state
                                              .reservation.productReservations
                                              .where((element) =>
                                                  element.status ==
                                                  ReservationItemStatus
                                                      .awaitingBuyer)
                                              .toList();
                                          return Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                list[index].adProduct.name ??
                                                    '',
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                'Só tem ${list[index].quantity} ${list[index].adProduct.unitMeasure} disponível(eis). Aceitar?',
                                                style: const TextStyle(),
                                              ),
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: MaterialButton(
                                                        onPressed: () {},
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  0, 8, 0, 8),
                                                          width:
                                                              double.infinity,
                                                          decoration: const BoxDecoration(
                                                              color: ColorSet
                                                                  .red1Alpha,
                                                              borderRadius: BorderRadius
                                                                  .all(Radius
                                                                      .circular(
                                                                          20))),
                                                          child: const Text(
                                                              'Cancelar',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: ColorSet
                                                                      .red1)),
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
                                                            .add(SingleReservationEvent
                                                                .onAcceptPressed(
                                                                    index));
                                                      },
                                                      child: Container(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 8, 0, 8),
                                                        width: double.infinity,
                                                        decoration: const BoxDecoration(
                                                            color: ColorSet
                                                                .green1Alpha,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20))),
                                                        child: const Text(
                                                          'Aceitar',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: ColorSet
                                                                  .green1),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          );
                                        },
                                        itemCount: state
                                            .reservation.productReservations
                                            .where((element) =>
                                                element.status ==
                                                ReservationItemStatus
                                                    .awaitingBuyer)
                                            .toList()
                                            .length,
                                      ),
                                      const SizedBox(height: 40),
                                    ],
                                  )),
                              const Divider(),
                              if (state.reservation.getStatusFromItems() !=
                                      ReservationItemStatus.buyerCanceled &&
                                  state.reservation.getStatusFromItems() !=
                                      ReservationItemStatus.sellerCanceled)
                                MaterialButton(
                                  onPressed: () {
                                    context.read<SummaryBloc>().add(
                                        SummaryEvent.onCancelReservationPressed(
                                            state.reservation));
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.fromLTRB(
                                        50, 10, 50, 10),
                                    decoration: const BoxDecoration(
                                    color: ColorSet.red1Alpha,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20))),
                                child: const Text('Cancelar Pedido',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: ColorSet.red1)),
                              ),
                            ),
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
                      .read<SingleReservationBloc>()
                      .add(const SingleReservationEvent.onExpandPressed());
                },
                child: SizedBox(
                  height: 40,
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          context
                                  .read<SingleReservationBloc>()
                                  .state
                                  .isItemVisible
                              ? 'Itens'
                              : 'Ver itens',
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            context
                                    .read<SingleReservationBloc>()
                                    .state
                                    .isItemVisible
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
    );
  }

  Widget _getStatusText(Reservation reservation) {
    final String text;
    String iconText;
    switch (reservation.getStatusFromItems()) {
      case ReservationItemStatus.pendingSeller:
        text = 'Pendente';
        iconText = '?';
        break;
      case ReservationItemStatus.buyerCanceled:
        text = 'Cancelado';
        iconText = 'x';
        break;
      case ReservationItemStatus.awaitingBuyer:
        text = 'Aguardando confirmação';
        iconText = '!';
        break;
      case ReservationItemStatus.confirmed:
        text = 'Confirmado';
        iconText = '✓';
        break;
      case ReservationItemStatus.paid:
        text = 'Pago';
        iconText = '✓';
        break;
      default:
        text = 'Pendente';
        iconText = '?';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Status do pedido',
            style: TextStyle(color: Colors.white, fontSize: 12),),
        const SizedBox(
          width: 2,
        ),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 8,
          child: Text(iconText, style: TextStyle(fontSize: 12, color: _getStatusColor(reservation), fontWeight: FontWeight.bold),),
        ),
        const SizedBox(
          width: 2,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),
        ),
      ],
    );
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
