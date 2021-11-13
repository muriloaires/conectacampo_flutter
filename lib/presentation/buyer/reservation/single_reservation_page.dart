import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:flutter/material.dart';

class SingleReservationBuyer extends StatelessWidget {
  final Reservation reservation;

  const SingleReservationBuyer(this.reservation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notificação de reserva'),),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ReservationWidget(reservation),
      ),
    );
  }
}
