// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductResponse _$_$_ProductResponseFromJson(Map<String, dynamic> json) {
  return _$_ProductResponse(
    json['id'] as int,
    json['name'] as String,
    (json['synonyms'] as List<dynamic>).map((e) => e as String).toList(),
    (json['ratings'] as List<dynamic>).map((e) => e as String).toList(),
    (json['kinds'] as List<dynamic>).map((e) => e as String).toList(),
    (json['measurement_units'] as List<dynamic>)
        .map((e) => UnitMeasureResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$_$_ProductResponseToJson(_$_ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'synonyms': instance.synonyms,
      'ratings': instance.ratings,
      'kinds': instance.kinds,
      'measurement_units': instance.measurementUnits,
      'created_at': instance.createdAt,
    };

_$_UnitMeasureResponse _$_$_UnitMeasureResponseFromJson(
    Map<String, dynamic> json) {
  return _$_UnitMeasureResponse(
    json['id'] as int,
    json['name'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
  );
}

Map<String, dynamic> _$_$_UnitMeasureResponseToJson(
        _$_UnitMeasureResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
