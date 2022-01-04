part of 'summary_bloc.dart';

@freezed
class SummaryState with _$SummaryState {
  const factory SummaryState({
    required Option<Either<ReservationFailure, Unit>>
        optionOfReservationCancelFailureOrSuccess,
    required Place selectedPlace,
    required bool openSearch,
  }) = _SummaryState;

  factory SummaryState.initial() => SummaryState(
        optionOfReservationCancelFailureOrSuccess: none(),
        selectedPlace: const Place(address: '', id: '', name: '', state: ''),
        openSearch: false,
      );
}
