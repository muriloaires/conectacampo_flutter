// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    json['id'] as int,
    json['name'] as String?,
    json['nickname'] as String?,
    json['vehicleLicensePlate'] as String?,
    json['phoneNumber'] as String?,
    json['thumbAvatar'] == null
        ? null
        : ThumbAvatar.fromJson(json['thumbAvatar'] as Map<String, dynamic>),
    json['mediumAvatar'] == null
        ? null
        : MediumAvatar.fromJson(json['mediumAvatar'] as Map<String, dynamic>),
    json['originalAvatar'] == null
        ? null
        : OriginalAvatar.fromJson(
            json['originalAvatar'] as Map<String, dynamic>),
    json['lastAdvertisement'] == null
        ? null
        : Advertisement.fromJson(
            json['lastAdvertisement'] as Map<String, dynamic>),
    json['email'] as String?,
    json['ownGroupId'] as int?,
    isOnline: json['isOnline'] as bool?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nickname': instance.nickname,
      'vehicleLicensePlate': instance.vehicleLicensePlate,
      'phoneNumber': instance.phoneNumber,
      'thumbAvatar': instance.thumbAvatar?.toJson(),
      'mediumAvatar': instance.mediumAvatar?.toJson(),
      'originalAvatar': instance.originalAvatar?.toJson(),
      'lastAdvertisement': instance.lastAdvertisement?.toJson(),
      'email': instance.email,
      'ownGroupId': instance.ownGroupId,
      'isOnline': instance.isOnline,
    };

_$_ThumbAvatar _$_$_ThumbAvatarFromJson(Map<String, dynamic> json) {
  return _$_ThumbAvatar(
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_ThumbAvatarToJson(_$_ThumbAvatar instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_MediumAvatar _$_$_MediumAvatarFromJson(Map<String, dynamic> json) {
  return _$_MediumAvatar(
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_MediumAvatarToJson(_$_MediumAvatar instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$_OriginalAvatar _$_$_OriginalAvatarFromJson(Map<String, dynamic> json) {
  return _$_OriginalAvatar(
    json['url'] as String,
  );
}

Map<String, dynamic> _$_$_OriginalAvatarToJson(_$_OriginalAvatar instance) =>
    <String, dynamic>{
      'url': instance.url,
    };
