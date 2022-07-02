import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class Baloon extends StatelessWidget {
  final Widget child;
  final ChatMessage message;
  final User currentUser;

  const Baloon({
    required this.child,
    required this.message,
    required this.currentUser,
  });

  @override
  Widget build(BuildContext context) {
    final isFromLoggedUser = message.isFromLoggedUser(currentUser);
    return Align(
      alignment:
          isFromLoggedUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment:
            isFromLoggedUser ? MainAxisAlignment.end : MainAxisAlignment.start,
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: child,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 8, 4),
                    child: Wrap(
                      children: [
                        Text(
                          message.sentAt?.getHourMinute() ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            color: isFromLoggedUser
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                        const SizedBox(width: 4),
                        if (isFromLoggedUser)
                          Icon(
                            message.hasPendingWrites ?? false
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
  }
}
