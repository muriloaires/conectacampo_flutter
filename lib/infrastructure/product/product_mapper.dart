import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/infrastructure/product/model/model.dart';

extension ProductExtension on ProductResponse {
  Product toDomain() {
    return Product(
        id: id,
        name: name,
        synonyms: synonyms,
        ratings: ratings,
        kinds: kinds,
        unitMeasures: measurementUnits.map((e) => e.toDomain()).toList(),
        createdAt: createdAt);
  }
}

extension UnitMeasureExtension on UnitMeasureResponse {
  UnitMeasure toDomain() {
    return UnitMeasure(
        id: id, name: name, createdAt: createdAt, updatedAt: updatedAt);
  }
}
