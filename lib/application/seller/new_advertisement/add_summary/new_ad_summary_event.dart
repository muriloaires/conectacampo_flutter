part of 'new_ad_summary_bloc.dart';

@freezed
class NewAdSummaryEvent with _$NewAdSummaryEvent {
  const factory NewAdSummaryEvent.started(
      {required NewAdvertisement newAdvertisement}) = _Started;

  const factory NewAdSummaryEvent.editTap({required int index}) = _EditTap;
  const factory NewAdSummaryEvent.addItemsTap() = _AddItems;
  const factory NewAdSummaryEvent.finish() = _Finish;
}
