part of 'product_page_bloc.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Option<Either<ReservationFailure, ReservationItem>>
          optionOfReservatiomItemFailureOrSuccess,
      required bool setInitialQuantity,
      required bool back,
      required bool showInserted,
      required bool showErrorMsg,
      required Place? place}) = _ProductPageState;

  factory ProductPageState.initial() => ProductPageState(
      reservationQuantity: ReservationQuantity(''),
      showErrorsMessage: false,
      optionOfReservatiomItemFailureOrSuccess: none(),
      setInitialQuantity: true,
      back: false,
      showInserted: false,
      showErrorMsg: false,
      place: null);
}
