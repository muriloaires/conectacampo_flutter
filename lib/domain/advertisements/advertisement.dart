import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement.freezed.dart';

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement(
    int id,
    List<AdProduct> products,
    String deliveryAt,
    String availableForGroupsAt,
    String vehicleLicensePlate,
    Place place,
    User seller,
    String createdAt,
  ) = _Advertisement;
}

@freezed
class AdProduct with _$AdProduct {
  const factory AdProduct(
    int id,
    String? name,
    String unitMeasure,
    int quantity,
    String? unitPrice,
    String rating,
    String kind,
    String? observation,
    List<ProductImages> images,
    String createdAt,
    Advertisement? advertisement,
  ) = _AdProduct;
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
  const factory UnitMeasure({
    required int id,
    required String name,
    required String createdAt,
    required String updatedAt,
  }) = _UnitMeasure;
}
