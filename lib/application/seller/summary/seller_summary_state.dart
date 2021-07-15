part of 'seller_summary_bloc.dart';

@freezed
class SellerSummaryState with _$SellerSummaryState {
  const factory SellerSummaryState({
    required Option<Place> optionOfOPlace,
    required Option<Either<AuthFailure, User>> optionOfOUser,
    required Option<Either<AdvertisementFailure, List<Advertisement>>>
        optionOfAdvertisementsFailureOrSuccess,
  }) = _SellerSummaryState;

  factory SellerSummaryState.initial() => SellerSummaryState(
      optionOfOPlace: none(),
      optionOfOUser: none(),
      optionOfAdvertisementsFailureOrSuccess: none());
}
