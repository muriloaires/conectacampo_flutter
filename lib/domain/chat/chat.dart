// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  @JsonSerializable(explicitToJson: true)
  const factory Chat({
    required String? id,
    required List<User> users,
    @ServerTimestampConverter() required DateTime? createdAt,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  factory Chat.fromFirestore(DocumentSnapshot doc) =>
      Chat.fromJson(doc.data()! as Map<String, dynamic>).copyWith(id: doc.id);
}

@freezed
class UserChat with _$UserChat {
  @JsonSerializable(explicitToJson: true)
  const factory UserChat({
    required String? id,
    required User otherUser,
    required String chatId,
    @ServerTimestampConverter() required DateTime? createdAt,
    @ServerTimestampConverter() required DateTime? updatedAt,
    required ChatMessage? lastMessage,
  }) = _UserChat;

  factory UserChat.fromJson(Map<String, dynamic> json) =>
      _$UserChatFromJson(json);

  factory UserChat.fromFirestore(DocumentSnapshot doc) =>
      UserChat.fromJson(doc.data()! as Map<String, dynamic>)
          .copyWith(id: doc.id);
}
