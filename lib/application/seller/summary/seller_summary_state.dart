part of 'seller_summary_bloc.dart';

@freezed
class SellerSummaryState with _$SellerSummaryState {
  const factory SellerSummaryState({
    required Place? place,
    required User? user,
    required Option<Either<AdvertisementFailure, List<Advertisement>>>
        optionOfAdvertisementsFailureOrSuccess,
    required Option<Either<ReservationFailure, List<Reservation>>>
        optionOfReservationFailureOrSuccess,
    required bool loadingReservations,
    required bool cancellingReservation,
    required Option<Either<ReservationFailure, Unit>>
        optionOfReservationCancelFailureOrSuccess,
  }) = _SellerSummaryState;

  factory SellerSummaryState.initial() => SellerSummaryState(
        place: null,
        user: null,
        optionOfAdvertisementsFailureOrSuccess: none(),
        optionOfReservationFailureOrSuccess: none(),
        loadingReservations: false,
        cancellingReservation: false,
        optionOfReservationCancelFailureOrSuccess: none(),
      );
}
