part of 'search_result_bloc.dart';

@freezed
class SearchResultState with _$SearchResultState {
  const factory SearchResultState({required Advertisement advertisement}) =
      _SearchResultState;

  factory SearchResultState.initial() => SearchResultState(
          advertisement: Advertisement(
        -1,
        [],
        '',
        '',
        Place(id: '', name: '', state: '', address: ''),
        User(
            UniqueId.fromUniqueString('as'),
            FullName('Full name'),
            Nickname('nickname'),
            'vehicleLicensePlate',
            PhoneNumber('62999999999'),
            null,
            null,
            null,
            null,
            null),
        '',
        '',
        '',
      ));
}
