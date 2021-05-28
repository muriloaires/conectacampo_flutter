// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    id: json['id'] as int,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    nickname: json['nickname'] as String,
    phoneNumber: json['phone_number'] as String,
    vehicleLicensePlate: json['vehicle_license_plate'] as String,
    avatar: json['avatar'] == null
        ? null
        : AvatarResponse.fromJson(json['avatar'] as Map<String, dynamic>),
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nickname': instance.nickname,
      'phone_number': instance.phoneNumber,
      'vehicle_license_plate': instance.vehicleLicensePlate,
      'avatar': instance.avatar,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

_$_AvatarResponse _$_$_AvatarResponseFromJson(Map<String, dynamic> json) {
  return _$_AvatarResponse(
    thumbnail: json['thumbnail'] == null
        ? null
        : ThumbnailResponse.fromJson(json['thumbnail'] as Map<String, dynamic>),
    medium: json['medium'] == null
        ? null
        : MediumResponse.fromJson(json['medium'] as Map<String, dynamic>),
    original: json['original'] == null
        ? null
        : ThumbnailResponse.fromJson(json['original'] as Map<String, dynamic>),
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
    id: json['id'] as int,
    url: json['url'] as String,
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
    id: json['id'] as int,
    url: json['url'] as String,
  );
}

Map<String, dynamic> _$_$_MediumResponseToJson(_$_MediumResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

_$_OriginalResponse _$_$_OriginalResponseFromJson(Map<String, dynamic> json) {
  return _$_OriginalResponse(
    id: json['id'] as int,
    url: json['url'] as String,
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
    phoneNumber: json['phone_number'] as String,
  );
}

Map<String, dynamic> _$_$_UserRequestToJson(_$_UserRequest instance) =>
    <String, dynamic>{
      'phone_number': instance.phoneNumber,
    };

_$_UserRegister _$_$_UserRegisterFromJson(Map<String, dynamic> json) {
  return _$_UserRegister(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    nickname: json['nickname'] as String,
    phoneNumber: json['phone_number'] as String,
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
    errors: (json['errors'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'errors': instance.errors,
    };
