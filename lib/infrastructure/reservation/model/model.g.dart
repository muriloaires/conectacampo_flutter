// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationItemDB _$_$_ReservationItemDBFromJson(Map<String, dynamic> json) {
  return _$_ReservationItemDB(
    id: json['_id'] as int,
    name: json['name'] as String,
    measurementUnit: json['measuremente_unit'] as String,
    quantity: json['ammount'] as int,
    rating: json['rating'] as String,
    kind: json['kind'] as String,
    sellerName: json['seller_name'] as String,
    sellerPhone: json['seller_phone'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_ReservationItemDBToJson(
        _$_ReservationItemDB instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'measuremente_unit': instance.measurementUnit,
      'ammount': instance.quantity,
      'rating': instance.rating,
      'kind': instance.kind,
      'seller_name': instance.sellerName,
      'seller_phone': instance.sellerPhone,
      'image': instance.image,
    };
