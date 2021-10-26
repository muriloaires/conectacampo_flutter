part of 'search_form_bloc.dart';

@freezed
class SearchFormState with _$SearchFormState {
  const factory SearchFormState({
    required Option<Either<ProductFailure, List<Product>>>
        optionOfProductsFailureOrSuccess,
    required bool searching,
    required Option<Either<AdvertisementFailure, List<AdProduct>>>
        optionOfAdsProductsFailureOrSuccess,
    required bool showFilters,
    required Place? place,
    required int kindRadioValue,
    required bool isKindsVisible,
    required int ratingRadioValue,
    required bool isRatingVisible,
    required Option<Either<ProductFailure, Product>>
        optionOfProductFailureOrSuccess,
    required Option<Product> optionOfSelectedProduct,
    required Option<DateTime> optionOfDateSelected,
    required String quantity,
    required List<Product> filteredProducts,
  }) = _SearchFormState;

  factory SearchFormState.initial() => SearchFormState(
      optionOfProductsFailureOrSuccess: none(),
      searching: false,
      optionOfAdsProductsFailureOrSuccess: none(),
      showFilters: false,
        place: null,
        kindRadioValue: 0,
        isKindsVisible: false,
        ratingRadioValue: 0,
        isRatingVisible: false,
        optionOfProductFailureOrSuccess: none(),
        optionOfSelectedProduct: none(),
        optionOfDateSelected: none(),
        quantity: '',
        filteredProducts: [],
      );
}
