// ignore_for_file: invalid_annotation_target

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path/path.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const ChatMessage._();
  @JsonSerializable(explicitToJson: true)
  const factory ChatMessage({
    required String? id,
    required String content,
    required String contentType,
    required String? fileUrl,
    required String? fileName,
    @ServerTimestampConverter() required DateTime? sentAt,
    required User sentBy,
    required bool visualized,
    required bool? audioReproduced,
    required int? audioDuration,
    required bool? hasPendingWrites,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageFromJson(json);

  factory ChatMessage.createTextChatMessage(String content, User user) =>
      ChatMessage(
        id: null,
        content: content,
        contentType: 'text',
        fileUrl: null,
        fileName: null,
        sentAt: null,
        sentBy: user,
        visualized: false,
        audioReproduced: null,
        audioDuration: null,
        hasPendingWrites: true,
      );

  factory ChatMessage.createFileChatMessage(File file, String url, User user) =>
      ChatMessage(
        id: null,
        content: '',
        contentType: 'document',
        fileUrl: url,
        fileName: basename(file.path),
        sentAt: null,
        sentBy: user,
        visualized: false,
        audioReproduced: null,
        audioDuration: null,
        hasPendingWrites: true,
      );

  factory ChatMessage.createImageChatMessage(
    File file,
    String url,
    User user,
  ) =>
      ChatMessage(
        id: null,
        content: '',
        contentType: 'image',
        fileUrl: url,
        fileName: basename(file.path),
        sentAt: null,
        sentBy: user,
        visualized: false,
        audioReproduced: null,
        audioDuration: null,
        hasPendingWrites: true,
      );

  factory ChatMessage.createAudioMessage(
    File file,
    String url,
    User user,
    int audioDuration,
  ) =>
      ChatMessage(
        id: null,
        content: '',
        contentType: 'audio',
        fileUrl: url,
        fileName: basename(file.path),
        sentAt: null,
        sentBy: user,
        visualized: false,
        audioReproduced: false,
        audioDuration: audioDuration,
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
