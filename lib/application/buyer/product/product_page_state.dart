part of 'product_page_bloc.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage}) = _ProductPageState;
  factory ProductPageState.initial() => ProductPageState(
      reservationQuantity: ReservationQuantity(''), showErrorsMessage: false);
}
