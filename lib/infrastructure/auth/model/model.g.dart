// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$_$_UserResponseFromJson(Map<String, dynamic> json) {
  return _$_UserResponse(
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    nickname: json['nickname'] as String,
    phoneNumber: json['phone_number'] as String,
    vehicleLicensePlate: json['vehicle_license_plate'] as String,
    accessToken: json['access_token'] as String,
    refreshToken: json['refresh_token'] as String,
  );
}

Map<String, dynamic> _$_$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'nickname': instance.nickname,
      'phone_number': instance.phoneNumber,
      'vehicle_license_plate': instance.vehicleLicensePlate,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
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
