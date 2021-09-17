part of 'seller_advertisements_bloc.dart';

@freezed
class SellerAdvertisementsState with _$SellerAdvertisementsState {
  const factory SellerAdvertisementsState(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfSellerAdsFailureOrSuccess,
      required bool loading}) = _SellerAdvertisementsState;

  factory SellerAdvertisementsState.initial() => SellerAdvertisementsState(
      optionOfSellerAdsFailureOrSuccess: none(), loading: false);
}
