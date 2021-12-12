part of 'single_advertisement_bloc.dart';

@freezed
class SingleAdvertisementState with _$SingleAdvertisementState {
  const factory SingleAdvertisementState({
    required Advertisement? advertisement,
    required Advertisement? lastSellerAd,
  }) = _SingleAdvertisementState;

  factory SingleAdvertisementState.initial() =>
      const SingleAdvertisementState(advertisement: null, lastSellerAd: null);
}
