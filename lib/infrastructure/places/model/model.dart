import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class PlaceResponse with _$PlaceResponse {
  const factory PlaceResponse(
           @JsonKey(name: 'id') int id,
           @JsonKey(name: 'name') String name,
           @JsonKey(name: 'state') String state,
           @JsonKey(name: 'city') String city,
           @JsonKey(name: 'address') String address,
           @JsonKey(name: 'created_at') DateTime createdAt) =
      _PlaceResponse;

  factory PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$PlaceResponseFromJson(json);
}
