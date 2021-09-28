part of 'single_reservation_bloc.dart';

@freezed
class SingleReservationEvent with _$SingleReservationEvent {
  const factory SingleReservationEvent.started(Reservation resservation) =
      _Started;

  const factory SingleReservationEvent.onAcceptPressed(int index) =
      OnAcceptPressed;

  const factory SingleReservationEvent.onCancelPressed(int index) =
      OnCancelPressed;

  const factory SingleReservationEvent.onAcceptErrorDisplayed() =
      OnAcceptErrorDisplayed;

  const factory SingleReservationEvent.onCancelErrorDisplayed() =
      OnCancelErrorDisplayed;

  const factory SingleReservationEvent.onExpandPressed() = OnExpandPressed;
}
