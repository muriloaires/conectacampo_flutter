// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();
  @JsonSerializable(explicitToJson: true)
  const factory ChatMessage(
    String? id,
    String content,
    String contentType,
    String? fileUrl,
    @ServerTimestampConverter() DateTime? sentAt,
    User sentBy, {
    required bool visualized,
    required bool? hasPendingWrites,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  factory ChatMessage.createTextChatMessage(String content, User user) =>
      ChatMessage(
        null,
        content,
        'text',
        null,
        null,
        user,
        visualized: false,
        hasPendingWrites: true,
      );

  factory ChatMessage.fromFirestore(DocumentSnapshot doc) =>
      ChatMessage.fromJson(doc.data()! as Map<String, dynamic>).copyWith(
        id: doc.id,
        hasPendingWrites: doc.metadata.hasPendingWrites,
      );

  bool isFromLoggedUser(User? currentUser) {
    return currentUser?.id == sentBy.id;
  }
}

class ServerTimestampConverter implements JsonConverter<DateTime?, Object?> {
  const ServerTimestampConverter();

  @override
  DateTime? fromJson(Object? timestamp) {
    if (timestamp is Timestamp) {
      return timestamp.toDate();
    } else {
      return DateTime.fromMillisecondsSinceEpoch(0);
    }
  }

  @override
  Object? toJson(DateTime? date) => date == null
      ? FieldValue.serverTimestamp()
      : Timestamp.fromDate(DateTime.now());
}
