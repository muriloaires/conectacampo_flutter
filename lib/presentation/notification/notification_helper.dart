import 'package:conectacampo/application/buyer/group/group_bloc.dart';
import 'package:conectacampo/application/buyer/menu/buyer_menu_bloc.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/presentation/buyer/reservation/single_reservation_page.dart';
import 'package:conectacampo/presentation/seller/reservation/single_reservation_seller_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> openNotification(
  BuildContext context,
  ReservationToOpen reservationToOpen,
) async {
  try {
    if (reservationToOpen.kind == 'advertisement_created') {
      final userType = await loadLoggedUserType();
      if (userType != null) {
        if (userType == 'buyer') {
          final groupBloc = context.read<GroupBloc>();
          groupBloc.add(const GroupEvent.started());
          final buyerMainBloc = context.read<BuyerMenuBloc>();
          buyerMainBloc.add(const BuyerMenuEvent.groupsTapped());
        } else {
          await persistUserType('buyer');
          Navigator.of(context, rootNavigator: true)
              .pushNamedAndRemoveUntil('/buyer_main', (route) => false);
        }
      }
    } else if (reservationToOpen.kind == 'reservation_confirmed' ||
        reservationToOpen.kind == 'payment_confirmed') {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) =>
              SingleReservationBuyer(reservationToOpen.reservation),
        ),
      );
    } else if (reservationToOpen.kind == "reservation_created") {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            SingleReservationSeller(reservationToOpen.reservation),
      ));
    } else if (reservationToOpen.kind == "reservation_canceled") {
      final loggedIDFailureOrSuccess = await loadLoggedUser();
      final id = loggedIDFailureOrSuccess?.id;
      if (reservationToOpen.reservation.buyer.id == id) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                SingleReservationBuyer(reservationToOpen.reservation),
          ),
        );
      } else {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                SingleReservationSeller(reservationToOpen.reservation),
          ),
        );
      }
    }
  } on Exception catch (e) {}
}
