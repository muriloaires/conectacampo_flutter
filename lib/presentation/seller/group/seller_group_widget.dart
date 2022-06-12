import 'package:conectacampo/application/seller/group/seller_group_bloc.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';

class SellerGroupWidget extends StatefulWidget {
  final BuyerReservations buyerReservations;

  const SellerGroupWidget(this.buyerReservations);

  @override
  _SellerGroupWidgetState createState() => _SellerGroupWidgetState();
}

class _SellerGroupWidgetState extends State<SellerGroupWidget> {
  bool expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
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
                              image: NetworkImage(widget.buyerReservations.user
                                      .mediumAvatar?.url ??
                                  '')))),
                  const SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.buyerReservations.user.nickname ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await openWhatsapp(
                    widget.buyerReservations.user.phoneNumber ?? '');
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
                  visible: expanded,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      final reservation =
                          widget.buyerReservations.reservations[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          children: [
                            Text(
                                'Dia: ${DateTime.parse(reservation.createdAt ?? '').getDayMonthYear()}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(height: 10),
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
                            const SizedBox(height: 10),
                          ],
                        ),
                      );
                    },
                    itemCount: widget.buyerReservations.reservations.length,
                    separatorBuilder: (context, index) => const Divider(),
                  )),
            ),
            Container(
              height: 1,
              color: ColorSet.gray10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: SizedBox(
                height: 40,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          expanded ? Icons.expand_less : Icons.expand_more,
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
}
