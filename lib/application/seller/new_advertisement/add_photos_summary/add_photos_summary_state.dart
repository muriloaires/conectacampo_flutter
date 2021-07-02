part of 'add_photos_summary_bloc.dart';

@freezed
class AddPhotosSummaryState with _$AddPhotosSummaryState {
  const factory AddPhotosSummaryState(
      {required List<NewAdProduct> products,
      required bool showBtnProceed,
      required bool openPhotoSelection,
      required int openPhotoIndex}) = _AddPhotosSummaryState;
  factory AddPhotosSummaryState.initial() => AddPhotosSummaryState(
      products: List.empty(),
      showBtnProceed: false,
      openPhotoSelection: false,
      openPhotoIndex: -1);
}
