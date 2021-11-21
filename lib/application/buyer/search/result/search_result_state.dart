part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({required Advertisement? advertisement}) =
      _SearchResultState;

  factory SearchResultState.initial() =>
      const SearchResultState(advertisement: null);
}
