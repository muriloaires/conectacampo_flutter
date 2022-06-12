import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:flutter/material.dart';

class AudioMessage extends MessageWidget {
  const AudioMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}
