// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AdvertisementResponse _$_$_AdvertisementResponseFromJson(
    Map<String, dynamic> json) {
  return _$_AdvertisementResponse(
    json['id'] as int,
    (json['products'] as List<dynamic>)
        .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['delivery_at'] as String,
    json['available_for_groups_at'] as String,
    json['vehicle_license_plate'] as String,
    PlaceResponse.fromJson(json['place'] as Map<String, dynamic>),
    UserResponse.fromJson(json['seller'] as Map<String, dynamic>),
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_AdvertisementResponseToJson(
        _$_AdvertisementResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'products': instance.products,
      'delivery_at': instance.deliveryAt,
      'available_for_groups_at': instance.availableForGroupsAt,
      'vehicle_license_plate': instance.vehicleLicensePlate,
      'place': instance.place,
      'seller': instance.seller,
      'created_at': instance.createdAt,
    };

_$_ProductResponse _$_$_ProductResponseFromJson(Map<String, dynamic> json) {
  return _$_ProductResponse(
    json['id'] as int,
    json['name'] as String,
    json['measurement_unit'] as String,
    json['quantity'] as int,
    json['unit_price'] as String,
    json['rating'] as String,
    json['kind'] as String,
    json['observation'] as String,
    (json['images'] as List<dynamic>)
        .map((e) => AvatarResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_ProductResponseToJson(_$_ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'measurement_unit': instance.unitMeasure,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'rating': instance.rating,
      'kind': instance.kind,
      'observation': instance.observation,
      'images': instance.images,
      'created_at': instance.createdAt,
    };

_$_UnitMeasureResponse _$_$_UnitMeasureResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UnitMeasureResponse(
    json['id'] as int,
  );
}

Map<String, dynamic> _$_$_UnitMeasureResponseToJson(
        _$_UnitMeasureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
