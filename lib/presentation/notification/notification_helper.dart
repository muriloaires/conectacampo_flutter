import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/presentation/buyer/reservation/single_reservation_page.dart';
import 'package:conectacampo/presentation/seller/reservation/single_reservation_seller_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> openNotification(
    BuildContext context, ReservationToOpen reservationToOpen) async {
  if (reservationToOpen?.kind == 'reservation_confirmed' ||
      reservationToOpen?.kind == 'payment_confirmed') {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          SingleReservationBuyer(reservationToOpen!.reservation),
    ));
  } else if (reservationToOpen?.kind == "reservation_created") {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          SingleReservationSeller(reservationToOpen!.reservation),
    ));
  } else if (reservationToOpen?.kind == "reservation_canceled") {
    final loggedIDFailureOrSuccess = await loadLoggedUser();
    final id =
        loggedIDFailureOrSuccess.fold((l) => null, (r) => r.id.getOrCrash());
    if (reservationToOpen!.reservation.buyer.id.toString() == id) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SingleReservationBuyer(reservationToOpen!.reservation),
      ));
    } else {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SingleReservationSeller(reservationToOpen!.reservation),
      ));
    }
  }
}
