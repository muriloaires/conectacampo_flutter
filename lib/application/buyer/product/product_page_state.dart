part of 'product_page_bloc.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Option<ReservationItem> optionOfReservatiomItem,
      required bool setInitialQuantity,
      required bool back}) = _ProductPageState;
  factory ProductPageState.initial() => ProductPageState(
      reservationQuantity: ReservationQuantity(''),
      showErrorsMessage: false,
      optionOfReservatiomItem: none(),
      setInitialQuantity: true,
      back: false);
}
