import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/message/baloon.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageMessage extends MessageWidget {
  const ImageMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  Widget build(BuildContext context) {
    final isFromLoggedUser = message.isFromLoggedUser(currentUser);
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Baloon(
          isFromLoggedUser: isFromLoggedUser,
          sentAt: state.message?.sentAt,
          hasPendingWrites: state.message?.hasPendingWrites ?? true,
          child: Text(
            message.content,
            style: TextStyle(
              fontSize: 16,
              color: isFromLoggedUser ? Colors.white : Colors.black,
            ),
          ),
        );
      },
    );
  }
}
