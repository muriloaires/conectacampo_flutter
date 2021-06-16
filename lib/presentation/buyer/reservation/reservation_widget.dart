import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reservation extends StatefulWidget {
  final ReservationStatus status;

  const Reservation(this.status);

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  bool isItemsVisible = false;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Container(
                height: 40,
                color: _getStatusColor(),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Center(
                    child: Text.rich(TextSpan(
                        text: 'Status do pedido ',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        children: [
                          TextSpan(
                              text: '3455 ✅ Confirmado',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ])),
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
                  SizedBox(
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
              width: double.infinity,
              child: Visibility(
                  visible: isItemsVisible,
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
                        SizedBox(
                          width: double.infinity,
                          child: ListView.builder(
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
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('Alterar itens',
                            style: TextStyle(
                                color: ColorSet.colorPrimaryGreen,
                                fontSize: 12,
                                decoration: TextDecoration.underline))
                      ],
                    ),
                  )),
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: ColorSet.gray10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isItemsVisible = !isItemsVisible;
                });
              },
              child: SizedBox(
                height: 40,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        isItemsVisible ? 'Itens' : 'Ver itens',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          isItemsVisible
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
        ));
  }

  Color _getStatusColor() {
    switch (widget.status) {
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
