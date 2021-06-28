import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'synonyms') List<String> synonyms,
    @JsonKey(name: 'ratings') List<String> ratings,
    @JsonKey(name: 'kinds') List<String> kinds,
    @JsonKey(name: 'measurement_units')
        List<UnitMeasureResponse> measurementUnits,
    @JsonKey(name: 'created_at') String createdAt,
  ) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
class UnitMeasureResponse with _$UnitMeasureResponse {
  const factory UnitMeasureResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'created_at') String createdAt,
    @JsonKey(name: 'updated_at') String updatedAt,
  ) = _UnitMeasureResponse;

  factory UnitMeasureResponse.fromJson(Map<String, dynamic> json) =>
      _$UnitMeasureResponseFromJson(json);
}
