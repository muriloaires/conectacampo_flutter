import 'package:conectacampo/application/buyer/reservation/bloc/reservation_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reservation extends StatelessWidget {
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
                    color: _getStatusColor(state),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(54, 8, 54, 8),
                      child: Center(
                        child: _getStatusText(state),
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
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://i.imgur.com/BoN9kdC.png")))),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Joao Roberto',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text.rich(TextSpan(text: 'Placa: ', children: [
                            TextSpan(
                                text: 'PKN  3440',
                                style: TextStyle(fontWeight: FontWeight.bold))
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
                              Text(
                                'Fale com o vendedor',
                                style: const TextStyle(
                                    color: ColorSet.green1,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              SvgPicture.asset(
                                'assets/whatsapp_colored.svg',
                                height: 18,
                                width: 18,
                              )
                            ],
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Visibility(
                      visible: state.isItemsVisible,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Itens',
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
                                    'Item 1 • 3 sacos',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                );
                              },
                              itemCount: 4,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            const Text('Alterar itens',
                                style: TextStyle(
                                    color: ColorSet.colorPrimaryGreen,
                                    fontSize: 12,
                                    decoration: TextDecoration.underline)),
                            const SizedBox(
                              height: 50,
                            ),
                            Visibility(
                                visible: state.status ==
                                    ReservationStatus.waitingConfirmation,
                                child: Column(
                                  children: [
                                    const Text('❗ Atenção!',
                                        style: TextStyle(
                                            color: ColorSet.yellow2,
                                            fontSize: 12,
                                            decoration:
                                                TextDecoration.underline)),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    ListView.separated(
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                        height: 8,
                                      ),
                                      physics: const ClampingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (itemBuilder, index) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Alface Crespa',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              'Só tem 40 unidades disponíveis. Aceitar?',
                                              style: TextStyle(),
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.fromLTRB(
                                                                30, 10, 30, 10),
                                                        child: Text('Cancelar',
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: ColorSet
                                                                    .red1)),
                                                        decoration: BoxDecoration(
                                                            color: ColorSet
                                                                .red1Alpha,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            20))),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: GestureDetector(
                                                    onTap: () {},
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              30, 10, 30, 10),
                                                      child: Text(
                                                        'Aceitar',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: ColorSet
                                                                .green1),
                                                      ),
                                                      decoration: BoxDecoration(
                                                          color: ColorSet
                                                              .green1Alpha,
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          20))),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        );
                                      },
                                      itemCount: 4,
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                    Center(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.fromLTRB(
                                              50, 10, 50, 10),
                                          child: Text('Cancelar Pedido',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: ColorSet.red1)),
                                          decoration: BoxDecoration(
                                              color: ColorSet.red1Alpha,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
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

  Widget _getStatusText(ReservationState state) {
    final String text;
    switch (state.status) {
      case ReservationStatus.pending:
        text = '? Pendente';
        break;
      case ReservationStatus.canceledByUser:
        text = 'x Cancelado pelo comprador';
        break;
      case ReservationStatus.waitingConfirmation:
        text = '! Aguardando confirmação';
        break;
      default:
        text = '✓ Confirmado';
    }
    return Text.rich(TextSpan(
        text: 'Status do pedido ',
        style: const TextStyle(color: Colors.white, fontSize: 12),
        children: [
          TextSpan(
              text: text, style: const TextStyle(fontWeight: FontWeight.bold))
        ]));
  }

  Color _getStatusColor(ReservationState state) {
    switch (state.status) {
      case ReservationStatus.pending:
        return ColorSet.gray10;

      case ReservationStatus.canceledByUser:
        return ColorSet.orange2;

      case ReservationStatus.waitingConfirmation:
        return ColorSet.yellow2;

      case ReservationStatus.confirmed:
        return ColorSet.green1;
    }
  }
}

enum ReservationStatus {
  pending,
  canceledByUser,
  waitingConfirmation,
  confirmed,
}
