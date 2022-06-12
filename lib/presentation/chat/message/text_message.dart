import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextMessage extends MessageWidget {
  const TextMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  Widget build(BuildContext context) {
    final isFromLoggedUser = message.isFromLoggedUser(currentUser);
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Align(
          alignment:
              isFromLoggedUser ? Alignment.centerRight : Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: isFromLoggedUser
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
              SizedBox(width: isFromLoggedUser ? 30 : 0),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: isFromLoggedUser ? ColorSet.green1 : Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: const Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Wrap(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            message.content,
                            style: TextStyle(
                              fontSize: 16,
                              color: isFromLoggedUser
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 20, 8, 4),
                        child: Wrap(
                          children: [
                            Text(
                              state.message?.sentAt?.getHourMinute() ?? '',
                              style: TextStyle(
                                fontSize: 12,
                                color: isFromLoggedUser
                                    ? Colors.white
                                    : Colors.black54,
                              ),
                            ),
                            if (isFromLoggedUser)
                              Icon(
                                (message.hasPendingWrites ?? true)
                                    ? Icons.access_time
                                    : Icons.check,
                                size: 14,
                                color: Colors.white,
                              )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: isFromLoggedUser ? 0 : 30),
            ],
          ),
        );
      },
    );
  }
}
