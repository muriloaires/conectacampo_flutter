import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement.freezed.dart';
part 'advertisement.g.dart';

@freezed
class Advertisement with _$Advertisement {
  const factory Advertisement(
    int id,
    List<AdProduct> products,
    String deliveryAt,
    String availableForGroupsAt,
    Place place,
    User seller,
    String createdAt,
    String meetingType,
    String meetingTypeDescription,
  ) = _Advertisement;

  factory Advertisement.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementFromJson(json);
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
    int advertisementId,
  ) = _AdProduct;

  factory AdProduct.fromJson(Map<String, dynamic> json) =>
      _$AdProductFromJson(json);
}

@freezed
class ProductImages with _$ProductImages {
  const factory ProductImages(
    ThumbAvatar thumbAvatar,
    MediumAvatar mediumAvatar,
    OriginalAvatar originalAvatar,
  ) = _ProductImages;

  factory ProductImages.fromJson(Map<String, dynamic> json) =>
      _$ProductImagesFromJson(json);
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
