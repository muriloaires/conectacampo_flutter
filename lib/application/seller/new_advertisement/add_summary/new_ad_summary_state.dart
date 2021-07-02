part of 'new_ad_summary_bloc.dart';

@freezed
class NewAdSummaryState with _$NewAdSummaryState {
  const factory NewAdSummaryState({
    required NewAdvertisement newAdvertisement,
    required bool openEdit,
    required int editIndex,
    required bool addItems,
    required bool finish,
  }) = _NewAdSummaryState;

  factory NewAdSummaryState.initial() => NewAdSummaryState(
      newAdvertisement: NewAdvertisement(
          date: NewAdvertisementDate(''),
          newAdDeliveryDescription: NewAdvertisementDeliveryDescription(''),
          newAdDeliveryPlace: null,
          products: List.empty()),
      openEdit: false,
      editIndex: 0,
      addItems: false,
      finish: false);
}
