import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class UserResponse with _$UserResponse {
  const factory UserResponse({
    @required @JsonKey(name: 'id') int id,
    @required @JsonKey(name: 'first_name') String firstName,
    @required @JsonKey(name: 'last_name') String lastName,
    @required @JsonKey(name: 'nickname') String nickname,
    @required @JsonKey(name: 'phone_number') String phoneNumber,
    @required
    @JsonKey(name: 'vehicle_license_plate')
        String vehicleLicensePlate,
    @JsonKey(name: 'avatar') AvatarResponse avatar,
    @required @JsonKey(name: 'access_token') String accessToken,
    @required @JsonKey(name: 'refresh_token') String refreshToken,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
abstract class AvatarResponse with _$AvatarResponse {
  const factory AvatarResponse({
    @required @JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
    @required @JsonKey(name: 'medium') MediumResponse medium,
    @required @JsonKey(name: 'original') ThumbnailResponse original,
  }) = _AvatarResponse;
  factory AvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$AvatarResponseFromJson(json);
}

@freezed
abstract class ThumbnailResponse with _$ThumbnailResponse {
  const factory ThumbnailResponse({
    @required @JsonKey(name: 'id') int id,
    @required @JsonKey(name: 'url') String url,
  }) = _ThumbnailResponse;
  factory ThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailResponseFromJson(json);
}

@freezed
abstract class MediumResponse with _$MediumResponse {
  const factory MediumResponse({
    @required @JsonKey(name: 'id') int id,
    @required @JsonKey(name: 'url') String url,
  }) = _MediumResponse;
  factory MediumResponse.fromJson(Map<String, dynamic> json) =>
      _$MediumResponseFromJson(json);
}

@freezed
abstract class OriginalResponse with _$OriginalResponse {
  const factory OriginalResponse({
    @required @JsonKey(name: 'id') int id,
    @required @JsonKey(name: 'url') String url,
  }) = _OriginalResponse;
  factory OriginalResponse.fromJson(Map<String, dynamic> json) =>
      _$OriginalResponseFromJson(json);
}

@freezed
abstract class UserRequest with _$UserRequest {
  const factory UserRequest({
    @required @JsonKey(name: 'phone_number') String phoneNumber,
  }) = _UserRequest;
  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}

@freezed
abstract class UserRegister with _$UserRegister {
  const factory UserRegister({
    @required @JsonKey(name: 'first_name') String firstName,
    @required @JsonKey(name: 'last_name') String lastName,
    @required @JsonKey(name: 'nickname') String nickname,
    @required @JsonKey(name: 'phone_number') String phoneNumber,
  }) = _UserRegister;
  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);
}

@freezed
abstract class Errors with _$Errors {
  const factory Errors({@JsonKey(name: 'errors') List<String> errors}) =
      _Errors;
  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
