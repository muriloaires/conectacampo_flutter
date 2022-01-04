part of 'summary_reservations_bloc.dart';

@freezed
class SummaryReservationsState with _$SummaryReservationsState {
  const factory SummaryReservationsState({
    required bool loading,
    required Option<Either<ReservationFailure, List<Reservation>>>
        optionOfReservationsFailureOrSuccess,
    required bool isItemsVisible,
  }) = _SummaryReservationsState;

  factory SummaryReservationsState.initial() => SummaryReservationsState(
        loading: true,
        optionOfReservationsFailureOrSuccess: none(),
        isItemsVisible: false,
      );
}