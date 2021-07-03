part of 'add_photos_summary_bloc.dart';

@freezed
class AddPhotosSummaryState with _$AddPhotosSummaryState {
  const factory AddPhotosSummaryState(
      {required NewAdvertisement newAdvertisement,
      required bool showBtnProceed,
      required bool openPhotoSelection,
      required int openPhotoIndex,
      required bool proceed}) = _AddPhotosSummaryState;
  factory AddPhotosSummaryState.initial() => AddPhotosSummaryState(
      newAdvertisement: NewAdvertisement(
          date: NewAdvertisementDate(''),
          newAdDeliveryDescription: NewAdvertisementDeliveryDescription(''),
          newAdDeliveryPlace: null,
          products: List.empty()),
      showBtnProceed: false,
      openPhotoSelection: false,
      openPhotoIndex: -1,
      proceed: false);
}
