import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:conectacampo/presentation/seller/reservation/seller_reservation_widget.dart';
import 'package:flutter/material.dart';

class SingleReservationSeller extends StatelessWidget {
  final Reservation reservation;

  const SingleReservationSeller(this.reservation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSet.brown1,
        title: Text('Notificação de reserva'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SellerReservationWidget(reservation),
      ),
    );
  }
}
