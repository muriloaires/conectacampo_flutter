part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({required AdProduct adProduct}) =
      _SearchResultState;

  factory SearchResultState.initial() => SearchResultState(
      adProduct: AdProduct(
          0,
          '',
          '',
          0,
          '',
          '',
          '',
          '',
          [
            ProductImages(ThumbAvatar('a'), MediumAvatar('a'), OriginalAvatar('a'))
          ],
          '',
          null,
          -1));
}
