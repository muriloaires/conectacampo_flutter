part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({
    required List<ReservationItem> itemsInCart,
    required Option<Either<AdvertisementFailure, List<AdProduct>>>
        optionOfRemoteAdProductsFailureOrSuccess,
    required bool reservating,
    required Option<Either<ReservationFailure, Unit>>
        optionOfreservationResultSuccessOrFailure,
    required bool showDialogErrorItems,
    required Option<ReservationResponse> optionOfReservationResponse,
    required bool invalidQuantity,
  }) = _CartState;

  factory CartState.initial() => CartState(
        itemsInCart: [],
        optionOfRemoteAdProductsFailureOrSuccess: none(),
        reservating: false,
        optionOfreservationResultSuccessOrFailure: none(),
        optionOfReservationResponse: none(),
        showDialogErrorItems: false,
        invalidQuantity: false,
      );
}
