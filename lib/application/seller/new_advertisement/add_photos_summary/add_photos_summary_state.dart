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
          date: NewAdvertisementDate(DateTime.now().add(Duration(days: 1))),
          newAdDeliveryDescription: NewAdvertisementDeliveryDescription(''),
          newAdDeliveryPlace: null,
          products: List.empty(),
          newAdDeliveryType: 'Type'),
      showBtnProceed: false,
      openPhotoSelection: false,
      openPhotoIndex: -1,
      proceed: false);
}
