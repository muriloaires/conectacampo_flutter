// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationResponse _$_$_NotificationResponseFromJson(
    Map<String, dynamic> json) {
  return _$_NotificationResponse(
    json['id'] as int,
    json['created_at'] as String,
    json['title'] as String,
    json['message'] as String,
    json['kind'] as String,
    json['user_id'] as int,
    json['notificable'] == null
        ? null
        : Notificatificable.fromJson(
            json['notificable'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NotificationResponseToJson(
        _$_NotificationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'title': instance.title,
      'message': instance.message,
      'kind': instance.kind,
      'user_id': instance.userId,
      'notificable': instance.notificatificable,
    };

_$_Notificatificable _$_$_NotificatificableFromJson(Map<String, dynamic> json) {
  return _$_Notificatificable(
    json['id'] as int,
  );
}

Map<String, dynamic> _$_$_NotificatificableToJson(
        _$_Notificatificable instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
