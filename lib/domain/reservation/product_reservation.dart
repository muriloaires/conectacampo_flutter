import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_reservation.freezed.dart';

@freezed
class ProductReservation with _$ProductReservation {
  const factory ProductReservation(
      {required int? id,
      required String? createdAt,
      required ReservationItemStatus status,
      required int quantity,
      required AdProduct adProduct}) = _ProductReservation;
}
