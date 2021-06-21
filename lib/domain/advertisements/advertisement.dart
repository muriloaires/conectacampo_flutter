import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement.freezed.dart';

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement(
    int id,
    List<Product> products,
    String deliveryAt,
    String availableForGroupsAt,
    String vehicleLicensePlate,
    Place place,
    User seller,
    String createdAt,
  ) = _Advertisement;
}

@freezed
class Product with _$Product {
  const factory Product(
    int id,
    String name,
    String unitMeasure,
    int quantity,
    String unitPrice,
    String rating,
    String kind,
    String observation,
    List<ProductImages> images,
    String createdAt,
    Advertisement? advertisement,
  ) = _Product;
}

@freezed
class ProductImages with _$ProductImages {
  const factory ProductImages(
      ThumbAvatar thumbAvatar,
      MediumAvatar mediumAvatar,
      OriginalAvatar originalAvatar) = _ProductImages;
}

@freezed
class UnitMeasure with _$UnitMeasure {
  const factory UnitMeasure(int id) = _UnitMeasure;
}
