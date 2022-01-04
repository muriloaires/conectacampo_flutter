part of 'seller_advertisements_bloc.dart';

@freezed
class SellerAdvertisementsState with _$SellerAdvertisementsState {
  const factory SellerAdvertisementsState({
    required Either<AdvertisementFailure, List<Advertisement>>?
        sellerAdsFailureOrSuccess,
    required bool loading,
    required bool someExpanded,
  }) = _SellerAdvertisementsState;

  factory SellerAdvertisementsState.initial() =>
      const SellerAdvertisementsState(
        sellerAdsFailureOrSuccess: null,
        loading: false,
        someExpanded: false,
      );
}
