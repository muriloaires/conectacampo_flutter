part of 'ad_detail_bloc.dart';

@freezed
class AdDetailState with _$AdDetailState {
  const factory AdDetailState({
    required Advertisement? advertisement,
    required bool loadingAd,
  }) = _AdDetailState;

  factory AdDetailState.initial() => const AdDetailState(
        advertisement: null,
        loadingAd: false,
      );
}
