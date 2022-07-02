import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/message/audio_message.dart';
import 'package:conectacampo/presentation/chat/message/document_message.dart';
import 'package:conectacampo/presentation/chat/message/image_message.dart';
import 'package:conectacampo/presentation/chat/message/text_message.dart';
import 'package:flutter/material.dart';

abstract class MessageWidget extends StatefulWidget {
  const MessageWidget(this.message, this.currentUser);
  final ChatMessage message;
  final User currentUser;

  factory MessageWidget.fromType(
    ChatMessage message,
    User currentUser,
    ChatMessage? nextAudioMessage,
  ) {
    switch (message.contentType) {
      case 'audio':
        return AudioMessage(message, currentUser, nextAudioMessage);

      case 'text':
        return TextMessage(message, currentUser);

      case 'location':
        return LocationMessage(message, currentUser);

      case 'document':
        return DocumentMessage(message, currentUser);

      case 'image':
        return ImageMessage(message, currentUser);

      default:
        return TextMessage(message, currentUser);
    }
  }

  // @override
  // State<MessageWidget> createState() => _MessageWidgetState();
}

class _LocationMessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class LocationMessage extends MessageWidget {
  const LocationMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  State<MessageWidget> createState() => _LocationMessageWidgetState();
}

class LoggedUserMessageWidget extends StatelessWidget {
  const LoggedUserMessageWidget();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
