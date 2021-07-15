part of 'buyer_menu_bloc.dart';

@freezed
class BuyerMenuState with _$BuyerMenuState {
  const factory BuyerMenuState({
    required int currentIndex,
    required bool navToRoot,
    required bool navToSeller,
  }) = _BuyerMenuState;

  factory BuyerMenuState.initial() => const BuyerMenuState(
      currentIndex: 0, navToRoot: false, navToSeller: false);
}
