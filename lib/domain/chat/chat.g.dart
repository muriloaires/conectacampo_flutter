// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$_$_ChatFromJson(Map<String, dynamic> json) {
  return _$_Chat(
    id: json['id'] as String?,
    users: (json['users'] as List<dynamic>)
        .map((e) => User.fromJson(e as Map<String, dynamic>))
        .toList(),
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
  );
}

Map<String, dynamic> _$_$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'id': instance.id,
      'users': instance.users.map((e) => e.toJson()).toList(),
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
    };

_$_UserChat _$_$_UserChatFromJson(Map<String, dynamic> json) {
  return _$_UserChat(
    id: json['id'] as String?,
    otherUser: User.fromJson(json['otherUser'] as Map<String, dynamic>),
    chatId: json['chatId'] as String,
    createdAt: const ServerTimestampConverter().fromJson(json['createdAt']),
    updatedAt: const ServerTimestampConverter().fromJson(json['updatedAt']),
    lastMessage: json['lastMessage'] == null
        ? null
        : ChatMessage.fromJson(json['lastMessage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserChatToJson(_$_UserChat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'otherUser': instance.otherUser.toJson(),
      'chatId': instance.chatId,
      'createdAt': const ServerTimestampConverter().toJson(instance.createdAt),
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'lastMessage': instance.lastMessage?.toJson(),
    };
