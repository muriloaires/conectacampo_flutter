import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/presentation/chat/message/baloon.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextMessage extends MessageWidget {
  const TextMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  State<MessageWidget> createState() => _TextMessageWidgetState();
}

class _TextMessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    final isFromLoggedUser =
        widget.message.isFromLoggedUser(widget.currentUser);
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Baloon(
          message: widget.message,
          currentUser: widget.currentUser,
          child: Text(
            widget.message.content,
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
