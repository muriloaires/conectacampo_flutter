part of 'seller_reservation_bloc.dart';

@freezed
class SellerReservationEvent with _$SellerReservationEvent {
  const factory SellerReservationEvent.started(Reservation reservation) =
      _Started;

  const factory SellerReservationEvent.finish() = Finish;
  factory SellerReservationEvent.quantityEdited(int index, int newQuantity) =
      QuantityEdited;
}
