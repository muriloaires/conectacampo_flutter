part of 'add_photo_bloc.dart';

@freezed
class AddPhotoState with _$AddPhotoState {
  const factory AddPhotoState(
      {required NewAdProduct? product,
      required List<String> photos}) = _AddPhotoState;
  factory AddPhotoState.initial() =>
      AddPhotoState(product: null, photos: List.empty());
}
