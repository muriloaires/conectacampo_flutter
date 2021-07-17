part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState({required List<ReservationItem> itemsInCart}) =
      _CartState;

  factory CartState.initial() => CartState(itemsInCart: List.empty());
}
