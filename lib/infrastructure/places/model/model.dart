import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class PlaceResponse with _$PlaceResponse {
  const factory PlaceResponse(
          {@required @JsonKey(name: 'id') int id,
          @required @JsonKey(name: 'name') String name,
          @required @JsonKey(name: 'state') String state,
          @required @JsonKey(name: 'city') String city,
          @required @JsonKey(name: 'address') String address,
          @required @JsonKey(name: 'created_at') DateTime createdAt}) =
      _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);
}
