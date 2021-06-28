part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.started() = _Started;
  const factory AddProductEvent.productSelected(Product? product) =
      ProductSelected;
  const factory AddProductEvent.kindSelected(String? kindSelected) =
      KindSelected;
  const factory AddProductEvent.ratingSelected(String? ratingSelected) =
      RatingSelected;

  const factory AddProductEvent.unitMeasureSelected(
      UnitMeasure? unitMeasureSelected) = UnitMeasureSelected;
}
