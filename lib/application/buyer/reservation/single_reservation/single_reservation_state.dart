part of 'single_reservation_bloc.dart';

@freezed
class SingleReservationState with _$SingleReservationState {
  const factory SingleReservationState(
      {required bool isItemVisible,
      required Reservation? reservation,
      required bool showAcceptError,
      required bool showCancelItemError,
      required bool canceling,
      required Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess,
      required Either<ReservationFailure, Unit>?
          cancelFailureOrSuccess}) = _SingleReservationState;

  factory SingleReservationState.initial() => const SingleReservationState(
      isItemVisible: false,
      reservation: null,
      showAcceptError: false,
      showCancelItemError: false,
      canceling: false,
      adFailureOrSuccess: null,
      cancelFailureOrSuccess: null);
}
