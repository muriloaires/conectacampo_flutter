part of 'add_photos_summary_bloc.dart';

@freezed
class AddPhotosSummaryEvent with _$AddPhotosSummaryEvent {
  const factory AddPhotosSummaryEvent.started(List<NewAdProduct> products) =
      _Started;

  const factory AddPhotosSummaryEvent.itemSelected(int index) = ItemSelected;

  const factory AddPhotosSummaryEvent.btnProceedTap() = BtnProceedTap;

  const factory AddPhotosSummaryEvent.photosSelected(
      int index, List<String> photos) = PhotosSelected;
}
