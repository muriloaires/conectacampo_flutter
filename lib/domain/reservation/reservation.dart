import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation.freezed.dart';

class ReservationToOpen {
  final String kind;
  final Reservation reservation;

  ReservationToOpen(this.kind, this.reservation);
}

@freezed
class Reservation with _$Reservation {
  const factory Reservation(
      {required int? id,
      required String? createdAt,
      required User buyer,
      required User? seller,
      required List<ProductReservation> productReservations}) = _Reservation;
}

extension ReservationExt on Reservation {
  ReservationItemStatus getStatusFromItems() {
    for (final element in productReservations) {
      if (element.status == ReservationItemStatus.sellerCanceled) {
        return ReservationItemStatus.sellerCanceled;
      }

      if (element.status == ReservationItemStatus.pendingSeller) {
        return ReservationItemStatus.pendingSeller;
      }

      if (element.status == ReservationItemStatus.awaitingBuyer) {
        return ReservationItemStatus.awaitingBuyer;
      }

      if (element.status == ReservationItemStatus.confirmed) {
        return ReservationItemStatus.confirmed;
      }

      if (element.status == ReservationItemStatus.paid) {
        return ReservationItemStatus.paid;
      }

      if (element.status == ReservationItemStatus.buyerCanceled) {
        return ReservationItemStatus.buyerCanceled;
      }
    }

    return ReservationItemStatus.sellerCanceled;
  }
}
