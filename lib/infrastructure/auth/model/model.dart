import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'nickname') String nickname,
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'vehicle_license_plate') String? vehicleLicensePlate,
    @JsonKey(name: 'avatar') AvatarResponse? avatar,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'refresh_token') String? refreshToken,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'own_group_id') int? ownGroupId,
  ) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class AvatarResponse with _$AvatarResponse {
  const factory AvatarResponse(
    @JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
    @JsonKey(name: 'medium') MediumResponse medium,
    @JsonKey(name: 'original') ThumbnailResponse original,
  ) = _AvatarResponse;

  factory AvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$AvatarResponseFromJson(json);
}

@freezed
class ThumbnailResponse with _$ThumbnailResponse {
  const factory ThumbnailResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'url') String url,
  ) = _ThumbnailResponse;

  factory ThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailResponseFromJson(json);
}

@freezed
class MediumResponse with _$MediumResponse {
  const factory MediumResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'url') String url,
  ) = _MediumResponse;

  factory MediumResponse.fromJson(Map<String, dynamic> json) =>
      _$MediumResponseFromJson(json);
}

@freezed
class OriginalResponse with _$OriginalResponse {
  const factory OriginalResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'url') String url,
  ) = _OriginalResponse;

  factory OriginalResponse.fromJson(Map<String, dynamic> json) =>
      _$OriginalResponseFromJson(json);
}

@freezed
class UserRequest with _$UserRequest {
  const factory UserRequest(
    @JsonKey(name: 'phone_number') String phoneNumber,
    @JsonKey(name: 'device_type') String deviceType,
    @JsonKey(name: 'device_token') String deviceToken,
  ) = _UserRequest;

  factory UserRequest.fromJson(Map<String, dynamic> json) =>
      _$UserRequestFromJson(json);
}

@freezed
class UserRegister with _$UserRegister {
  const factory UserRegister(
    @JsonKey(name: 'first_name') String firstName,
    @JsonKey(name: 'last_name') String lastName,
    @JsonKey(name: 'nickname') String nickname,
    @JsonKey(name: 'phone_number') String phoneNumber,
  ) = _UserRegister;

  factory UserRegister.fromJson(Map<String, dynamic> json) =>
      _$UserRegisterFromJson(json);
}

@freezed
class Errors with _$Errors {
  const factory Errors(@JsonKey(name: 'errors') List<String> errors) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> json) => _$ErrorsFromJson(json);
}
