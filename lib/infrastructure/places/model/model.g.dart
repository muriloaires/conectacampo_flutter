// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlaceListResponse _$_$_PlaceListResponseFromJson(Map<String, dynamic> json) {
  return _$_PlaceListResponse(
    places: (json['places'] as List)
        ?.map((e) => e == null
            ? null
            : PlaceResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_PlaceListResponseToJson(
        _$_PlaceListResponse instance) =>
    <String, dynamic>{
      'places': instance.places,
    };

_$_PlaceResponse _$_$_PlaceResponseFromJson(Map<String, dynamic> json) {
  return _$_PlaceResponse(
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
      'name': instance.name,
      'state': instance.state,
      'city': instance.city,
      'address': instance.address,
      'created_at': instance.createdAt?.toIso8601String(),
    };
