part of 'add_product_bloc.dart';

@freezed
class AddProductEvent with _$AddProductEvent {
  const factory AddProductEvent.started(NewAdvertisement newAdvertisement) =
      _Started;
  const factory AddProductEvent.productSelected(int index, Product? product) =
      ProductSelected;
  const factory AddProductEvent.kindSelected(int index, String? kindSelected) =
      KindSelected;
  const factory AddProductEvent.ratingSelected(
      int index, String? ratingSelected) = RatingSelected;

  const factory AddProductEvent.unitMeasureSelected(
      int index, UnitMeasure? unitMeasureSelected) = UnitMeasureSelected;

  const factory AddProductEvent.quantityChanged(int index, String quantity) =
      QuantityChanged;
  const factory AddProductEvent.addMoreTap() = AddMoreTap;

  const factory AddProductEvent.btnProceedTap() = BtnProceedTap;
}
