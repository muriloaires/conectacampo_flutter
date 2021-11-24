part of 'summary_bloc.dart';

@freezed
class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.started() = _Started;
  const factory SummaryEvent.onCancelReservationPressed(
      Reservation? reservation) = OnCancelReservationPressed;
  const factory SummaryEvent.onPlaceChanged() = OnPlaceChanged;
  const factory SummaryEvent.onBuyTapped() = OnBuyTapped;

}
