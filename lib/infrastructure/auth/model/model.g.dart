// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    json['id'] as int,
    json['full_name'] as String?,
    json['first_name'] as String,
    json['last_name'] as String,
    json['nickname'] as String,
    json['phone_number'] as String,
    json['vehicle_license_plate'] as String?,
    json['avatar'] == null
        ? null
        : AvatarResponse.fromJson(json['avatar'] as Map<String, dynamic>),
    json['access_token'] as String?,
    json['refresh_token'] as String?,
    json['email'] as String?,
    json['own_group_id'] as int?,
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'full_name': instance.fullName,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nickname': instance.nickname,
      'phone_number': instance.phoneNumber,
      'vehicle_license_plate': instance.vehicleLicensePlate,
      'avatar': instance.avatar,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'email': instance.email,
      'own_group_id': instance.ownGroupId,
    };

_$_AvatarResponse _$_$_AvatarResponseFromJson(Map<String, dynamic> json) {
  return _$_AvatarResponse(
    ThumbnailResponse.fromJson(json['thumbnail'] as Map<String, dynamic>),
    MediumResponse.fromJson(json['medium'] as Map<String, dynamic>),
    ThumbnailResponse.fromJson(json['original'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_AvatarResponseToJson(_$_AvatarResponse instance) =>
    <String, dynamic>{
      'thumbnail': instance.thumbnail,
      'medium': instance.medium,
      'original': instance.original,
    };

_$_ThumbnailResponse _$_$_ThumbnailResponseFromJson(Map<String, dynamic> json) {
  return _$_ThumbnailResponse(
    json['id'] as int,
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ThumbnailResponseToJson(
        _$_ThumbnailResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$_MediumResponse _$_$_MediumResponseFromJson(Map<String, dynamic> json) {
  return _$_MediumResponse(
    json['id'] as int,
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_MediumResponseToJson(_$_MediumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$_OriginalResponse _$_$_OriginalResponseFromJson(Map<String, dynamic> json) {
  return _$_OriginalResponse(
    json['id'] as int,
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_OriginalResponseToJson(
        _$_OriginalResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$_UserRequest _$_$_UserRequestFromJson(Map<String, dynamic> json) {
  return _$_UserRequest(
    json['phone_number'] as String,
    json['device_type'] as String,
    json['device_token'] as String,
  );
}

Map<String, dynamic> _$_$_UserRequestToJson(_$_UserRequest instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
      'device_type': instance.deviceType,
      'device_token': instance.deviceToken,
    };

_$_UserRegister _$_$_UserRegisterFromJson(Map<String, dynamic> json) {
  return _$_UserRegister(
    json['first_name'] as String,
    json['last_name'] as String,
    json['nickname'] as String,
    json['phone_number'] as String,
  );
}

Map<String, dynamic> _$_$_UserRegisterToJson(_$_UserRegister instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nickname': instance.nickname,
      'phone_number': instance.phoneNumber,
    };

_$_Errors _$_$_ErrorsFromJson(Map<String, dynamic> json) {
  return _$_Errors(
    (json['errors'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'errors': instance.errors,
    };
