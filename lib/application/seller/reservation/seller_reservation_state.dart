part of 'seller_reservation_bloc.dart';

@freezed
class SellerReservationState with _$SellerReservationState {
  const factory SellerReservationState({
    required Reservation? reservation,
    required bool update,
    required List<ProductReservation> deletedItems,
    required bool finishing,
    required bool finished,
    required Advertisement? advertisement,
    required List<ProductReservation> changedProducts,
    required bool loading,
    required Reservation? reservationToEdit,
  }) = _SellerReservationState;

  factory SellerReservationState.initial() => const SellerReservationState(
        reservation: null,
        update: false,
        deletedItems: [],
        finishing: false,
        finished: false,
        advertisement: null,
        changedProducts: [],
        loading: false,
        reservationToEdit: null,
      );
}
