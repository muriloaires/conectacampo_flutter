// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reservation_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationItem _$_$_ReservationItemFromJson(Map<String, dynamic> json) {
  return _$_ReservationItem(
    id: json['id'] as int,
    name: json['name'] as String,
    measurementUnit: json['measurementUnit'] as String,
    quantity: json['quantity'] as int,
    rating: json['rating'] as String,
    kind: json['kind'] as String,
    sellerName: json['sellerName'] as String,
    sellerPhone: json['sellerPhone'] as String,
    sellerId: json['sellerId'] as String,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_ReservationItemToJson(_$_ReservationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'measurementUnit': instance.measurementUnit,
      'quantity': instance.quantity,
      'rating': instance.rating,
      'kind': instance.kind,
      'sellerName': instance.sellerName,
      'sellerPhone': instance.sellerPhone,
      'sellerId': instance.sellerId,
      'image': instance.image,
    };
