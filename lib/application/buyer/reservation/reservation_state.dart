part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState({
    required bool loading,
    required Option<Either<ReservationFailure, List<Reservation>>>
        optionOfReservationListFailureOrSuccess,
    required bool isItemsVisible,
    required bool openSearch,
  }) = _ReservationState;

  factory ReservationState.initial() => ReservationState(
        loading: false,
        optionOfReservationListFailureOrSuccess: none(),
        isItemsVisible: true,
        openSearch: false,
      );
}
