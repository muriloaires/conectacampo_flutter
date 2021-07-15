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
      required List<String> history}) = _SearchFormState;

  factory SearchFormState.initial() => SearchFormState(
      productSelected: false,
      searching: false,
      optionOfAdsProductsFailureOrSuccess: none(),
      showFilters: false,
      place: null,
      showHistory: true,
      history: List<String>.empty());
}
