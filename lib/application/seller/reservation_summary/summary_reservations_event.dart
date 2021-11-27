part of 'summary_reservations_bloc.dart';

@freezed
class SummaryReservationsEvent with _$SummaryReservationsEvent {
  const factory SummaryReservationsEvent.started() = _Started;

}