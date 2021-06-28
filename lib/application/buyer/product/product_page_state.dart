part of 'product_page_bloc.dart';

@freezed
class ProductPageState with _$ProductPageState {
  const factory ProductPageState({required bool invalidAmount}) =
      _ProductPageState;
  factory ProductPageState.initial() =>
      const ProductPageState(invalidAmount: false);
}
