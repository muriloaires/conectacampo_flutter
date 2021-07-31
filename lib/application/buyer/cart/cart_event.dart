part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.onBtnDeleteTap(ReservationItem reservationItem) =
      OnBtnDeleteTap;

  const factory CartEvent.quantityChanged(
      ReservationItem reservationItem, String value) = QuantityChanged;
  const factory CartEvent.btnFinishPressed() = BtnFinishPressed;
}
