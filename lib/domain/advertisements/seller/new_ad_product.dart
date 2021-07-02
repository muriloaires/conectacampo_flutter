import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:conectacampo/domain/products/product.dart';

class NewAdProduct {
  Product? newAdProduct;
  NewAdProductKind? newAdProductKind;
  NewAdProductRating? newAdProductRating;
  UnitMeasure? newAdProductUnitMeasure;
  NewAdProductQuantity? newAdProductQuantity;
  NewAdProductObservation? newAdProductObservation;
  List<String> picturesPaths = List.empty();

  bool isValid() =>
      newAdProduct != null &&
      (newAdProductKind?.isValid() ?? false) &&
      (newAdProductRating?.isValid() ?? false) &&
      newAdProductUnitMeasure != null &&
      (newAdProductQuantity?.isValid() ?? false);
}
