import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class Baloon extends StatelessWidget {
  final Widget child;
  final bool isFromLoggedUser;
  final DateTime? sentAt;
  final bool hasPendingWrites;

  const Baloon({
    required this.child,
    required this.isFromLoggedUser,
    required this.sentAt,
    required this.hasPendingWrites,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment:
          isFromLoggedUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
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
              child: Wrap(
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: child,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 20, 8, 4),
                    child: Wrap(
                      children: [
                        Text(
                          sentAt?.getHourMinute() ?? '',
                          style: TextStyle(
                            fontSize: 12,
                            color: isFromLoggedUser
                                ? Colors.white
                                : Colors.black54,
                          ),
                        ),
                        if (isFromLoggedUser)
                          Icon(
                            hasPendingWrites ? Icons.access_time : Icons.check,
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
