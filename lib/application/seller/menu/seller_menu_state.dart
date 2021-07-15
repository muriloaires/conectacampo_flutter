part of 'seller_menu_bloc.dart';

@freezed
class SellerMenuState with _$SellerMenuState {
  const factory SellerMenuState(
      {required int currentIndex,
      required bool navToRoot,
      required bool navToBuyer,
      required int reTapIndex,
      required Place? place}) = _SellerMenuState;

  factory SellerMenuState.initial() => const SellerMenuState(
      currentIndex: 0,
      navToRoot: false,
      place: null,
      navToBuyer: false,
      reTapIndex: -1);
}
