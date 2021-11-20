part of 'product_page_bloc.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Either<ReservationFailure, ReservationItem>?
          reservationItemFailureOrSuccess,

      required bool showErrorMsg,
      required Place? place,
      required bool openCart}) = _ProductPageState;

  factory ProductPageState.initial() => ProductPageState(
      reservationQuantity: ReservationQuantity(''),
      showErrorsMessage: false,
      reservationItemFailureOrSuccess: null,

      showErrorMsg: false,
      place: null,
      openCart: false);
}
