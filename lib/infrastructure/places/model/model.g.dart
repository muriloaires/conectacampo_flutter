// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceResponse _$_$_PlaceResponseFromJson(Map<String, dynamic> json) {
  return _$_PlaceResponse(
    id: json['id'] as int,
    name: json['name'] as String,
    state: json['state'] as String,
    city: json['city'] as String,
    address: json['address'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
  );
}

Map<String, dynamic> _$_$_PlaceResponseToJson(_$_PlaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
    };
