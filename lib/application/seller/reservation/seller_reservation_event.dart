part of 'seller_reservation_bloc.dart';

@freezed
class SellerReservationEvent with _$SellerReservationEvent {
  const factory SellerReservationEvent.started(Reservation reservation) =
      _Started;

  const factory SellerReservationEvent.finish() = Finish;

  factory SellerReservationEvent.quantityEdited(int index, int newQuantity) =
      QuantityEdited;

  factory SellerReservationEvent.itemRemoved(int index) = ItemRemoved;

  const factory SellerReservationEvent.onConfirm() = OnConfirm;

  const factory SellerReservationEvent.onConfirmPayment() = OnConfirmPayment;

  const factory SellerReservationEvent.onCancel() = OnCancel;

  const factory SellerReservationEvent.showItemsTapped() = ShowItemsTapped;

  const factory SellerReservationEvent.reservationEditItemsTap(
    Reservation? reservation,
  ) = ReservationEditItemsTap;
}
