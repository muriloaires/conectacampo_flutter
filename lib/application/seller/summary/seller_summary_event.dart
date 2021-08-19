part of 'seller_summary_bloc.dart';

@freezed
class SellerSummaryEvent with _$SellerSummaryEvent {
  const factory SellerSummaryEvent.started() = _Started;
  const factory SellerSummaryEvent.onCancelReservationPressed(
      Reservation reservation) = OnCancelReservationPressed;
}
