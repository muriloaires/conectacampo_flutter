// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Advertisement _$_$_AdvertisementFromJson(Map<String, dynamic> json) {
  return _$_Advertisement(
    json['id'] as int,
    (json['products'] as List<dynamic>)
        .map((e) => AdProduct.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['deliveryAt'] as String,
    json['availableForGroupsAt'] as String,
    Place.fromJson(json['place'] as Map<String, dynamic>),
    User.fromJson(json['seller'] as Map<String, dynamic>),
    json['createdAt'] as String,
    json['meetingType'] as String,
    json['meetingTypeDescription'] as String,
  );
}

Map<String, dynamic> _$_$_AdvertisementToJson(_$_Advertisement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'deliveryAt': instance.deliveryAt,
      'availableForGroupsAt': instance.availableForGroupsAt,
      'place': instance.place,
      'seller': instance.seller,
      'createdAt': instance.createdAt,
      'meetingType': instance.meetingType,
      'meetingTypeDescription': instance.meetingTypeDescription,
    };

_$_AdProduct _$_$_AdProductFromJson(Map<String, dynamic> json) {
  return _$_AdProduct(
    json['id'] as int,
    json['name'] as String?,
    json['unitMeasure'] as String,
    json['quantity'] as int,
    json['unitPrice'] as String?,
    json['rating'] as String,
    json['kind'] as String,
    json['observation'] as String?,
    (json['images'] as List<dynamic>)
        .map((e) => ProductImages.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['createdAt'] as String,
    json['advertisement'] == null
        ? null
        : Advertisement.fromJson(json['advertisement'] as Map<String, dynamic>),
    json['advertisementId'] as int,
  );
}

Map<String, dynamic> _$_$_AdProductToJson(_$_AdProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'unitMeasure': instance.unitMeasure,
      'quantity': instance.quantity,
      'unitPrice': instance.unitPrice,
      'rating': instance.rating,
      'kind': instance.kind,
      'observation': instance.observation,
      'images': instance.images,
      'createdAt': instance.createdAt,
      'advertisement': instance.advertisement,
      'advertisementId': instance.advertisementId,
    };

_$_ProductImages _$_$_ProductImagesFromJson(Map<String, dynamic> json) {
  return _$_ProductImages(
    ThumbAvatar.fromJson(json['thumbAvatar'] as Map<String, dynamic>),
    MediumAvatar.fromJson(json['mediumAvatar'] as Map<String, dynamic>),
    OriginalAvatar.fromJson(json['originalAvatar'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductImagesToJson(_$_ProductImages instance) =>
    <String, dynamic>{
      'thumbAvatar': instance.thumbAvatar,
      'mediumAvatar': instance.mediumAvatar,
      'originalAvatar': instance.originalAvatar,
    };
