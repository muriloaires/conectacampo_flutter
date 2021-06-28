part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState(
      {required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required Option<Product> optionOfProductSelected,
      required Option<String> optionOfKindSelected,
      required Option<String> optionOfRatingSelected,
      required Option<UnitMeasure> optionOfUnitMeasureSelected,
      required Option<int> optionOfQuantity}) = _AddProductState;

  factory AddProductState.initial() => AddProductState(
      isLoading: true,
      optionProductsFailureOrSuccess: none(),
      optionOfProductSelected: none(),
      optionOfKindSelected: none(),
      optionOfRatingSelected: none(),
      optionOfUnitMeasureSelected: none(),
      optionOfQuantity: none());
}
