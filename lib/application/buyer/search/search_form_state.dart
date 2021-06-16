part of 'search_form_bloc.dart';

@freezed
class SearchFormState with _$SearchFormState {
  const factory SearchFormState({required bool productSelected}) =
      _SearchFormState;

  factory SearchFormState.initial() =>
      const SearchFormState(productSelected: false);
}
