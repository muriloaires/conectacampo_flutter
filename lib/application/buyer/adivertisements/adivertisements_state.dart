part of 'adivertisements_bloc.dart';

@freezed
class AdivertisementsState with _$AdivertisementsState {
  const factory AdivertisementsState({required List<Advertising> ads}) =
      _AdivertisementsState;

  factory AdivertisementsState.initial() =>
      AdivertisementsState(ads: List<Advertising>.empty());

  factory AdivertisementsState.demo() => AdivertisementsState(
      ads: [Advertising(true), Advertising(true), Advertising(true)]);
}
