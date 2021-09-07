part of 'adivertisements_bloc.dart';

@freezed
class AdvertisementsState with _$AdvertisementsState {
  const factory AdvertisementsState({
    required Either<AdvertisementFailure, List<Advertisement>>
        adsFailureOrSuccess,
    required Either<AdvertisementFailure, List<Advertisement>>
        groupsAdsFailureOrSuccess,
    required bool loading,
    required bool groupRemovalSuccess,
  }) = _AdivertisementsState;

  factory AdvertisementsState.initial() => AdvertisementsState(
      adsFailureOrSuccess: right(List<Advertisement>.empty()),
      groupsAdsFailureOrSuccess: right(List<Advertisement>.empty()),
      loading: true,
      groupRemovalSuccess: true);
}
