part of 'search_form_bloc.dart';

@freezed
class SearchFormState with _$SearchFormState {
  const factory SearchFormState(
      {required bool productSelected,
      required bool searching,
      required Option<Either<AdvertisementFailure, List<AdProduct>>>
          optionOfAdsProductsFailureOrSuccess,
      required bool showFilters,
      required Place? place,
      required bool showHistory,
      required List<String> history,
      required int kindRadioValue,
      required bool isKindsVisible,
        required int ratingRadioValue,
        required bool isRatingVisible,
      required Option<Either<ProductFailure, Product>> optionOfProductFailureOrSuccess}) = _SearchFormState;

  factory SearchFormState.initial() => SearchFormState(
      productSelected: false,
      searching: false,
      optionOfAdsProductsFailureOrSuccess: none(),
      showFilters: false,
      place: null,
      showHistory: true,
      history: List<String>.empty(),
      kindRadioValue: 0,
      isKindsVisible: false,
      ratingRadioValue: 0,
      isRatingVisible: false,
      optionOfProductFailureOrSuccess: none());
}
