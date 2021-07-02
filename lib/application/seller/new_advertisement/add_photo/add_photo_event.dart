part of 'add_photo_bloc.dart';

@freezed
class AddPhotoEvent with _$AddPhotoEvent {
  const factory AddPhotoEvent.started(NewAdProduct product) = _Started;
  const factory AddPhotoEvent.photoSelected(String path) = PhotoSelected;
}
