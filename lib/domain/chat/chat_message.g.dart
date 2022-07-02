// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$_$_ChatMessageFromJson(Map<String, dynamic> json) {
  return _$_ChatMessage(
    id: json['id'] as String?,
    content: json['content'] as String,
    contentType: json['contentType'] as String,
    fileUrl: json['fileUrl'] as String?,
    fileName: json['fileName'] as String?,
    sentAt: const ServerTimestampConverter().fromJson(json['sentAt']),
    sentBy: User.fromJson(json['sentBy'] as Map<String, dynamic>),
    visualized: json['visualized'] as bool,
    audioReproduced: json['audioReproduced'] as bool?,
    audioDuration: json['audioDuration'] as int?,
    hasPendingWrites: json['hasPendingWrites'] as bool?,
  );
}

Map<String, dynamic> _$_$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'contentType': instance.contentType,
      'fileUrl': instance.fileUrl,
      'fileName': instance.fileName,
      'sentAt': const ServerTimestampConverter().toJson(instance.sentAt),
      'sentBy': instance.sentBy.toJson(),
      'visualized': instance.visualized,
      'audioReproduced': instance.audioReproduced,
      'audioDuration': instance.audioDuration,
      'hasPendingWrites': instance.hasPendingWrites,
    };
