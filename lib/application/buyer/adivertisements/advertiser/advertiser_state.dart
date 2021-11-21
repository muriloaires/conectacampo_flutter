part of 'advertiser_bloc.dart';

@freezed
class AdvertiserState with _$AdvertiserState {
  const factory AdvertiserState({required User? seller}) = _AdvertiserState;

  factory AdvertiserState.initial() => const AdvertiserState(
      seller: null);
}
