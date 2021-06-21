part of 'adivertisements_bloc.dart';

@freezed
class AdvertisementsState with _$AdvertisementsState {
  const factory AdvertisementsState(
      {required Either<AdvertisementFailure, List<Advertisement>>
          adsFailureOrSuccess,
      required bool loading,
      required Place? fromPlace}) = _AdivertisementsState;

  factory AdvertisementsState.initial() => AdvertisementsState(
      adsFailureOrSuccess: right(List<Advertisement>.empty()),
      loading: true,
      fromPlace: null);
}
