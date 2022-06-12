// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$_$_ChatMessageFromJson(Map<String, dynamic> json) {
  return _$_ChatMessage(
    json['id'] as String?,
    json['content'] as String,
    json['contentType'] as String,
    json['fileUrl'] as String?,
    const ServerTimestampConverter().fromJson(json['sentAt']),
    User.fromJson(json['sentBy'] as Map<String, dynamic>),
    visualized: json['visualized'] as bool,
    hasPendingWrites: json['hasPendingWrites'] as bool?,
  );
}

Map<String, dynamic> _$_$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'contentType': instance.contentType,
      'fileUrl': instance.fileUrl,
      'sentAt': const ServerTimestampConverter().toJson(instance.sentAt),
      'sentBy': instance.sentBy.toJson(),
      'visualized': instance.visualized,
      'hasPendingWrites': instance.hasPendingWrites,
    };
