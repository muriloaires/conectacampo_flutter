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
      required ReservationStatus status,
      required List<ProductReservation> productReservations}) = _Reservation;
}
