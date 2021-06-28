import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required List<String> synonyms,
    required List<String> ratings,
    required List<String> kinds,
    required List<UnitMeasure> unitMeasures,
    required String createdAt,
  }) = _Product;

  @override
  String toString() {
    // TODO: implement toString
    return name;
  }
}
