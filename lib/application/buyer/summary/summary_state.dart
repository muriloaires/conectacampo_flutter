part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState(
      {required bool cancellingReservation,
      required Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      required Place selectedPlace}) = _SummaryState;

  factory SummaryState.initial() => SummaryState(
      cancellingReservation: false,
      optionOfReservationCancelFailureOrSuccess: none(),
      selectedPlace: const Place(address: '', id: '', name: '', state: ''));
}
