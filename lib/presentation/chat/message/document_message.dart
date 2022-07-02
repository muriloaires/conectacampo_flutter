import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/message/baloon.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocumentMessage extends MessageWidget {
  const DocumentMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  State<MessageWidget> createState() => _DocumentMessageWidgetState();
}

class _DocumentMessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Baloon(
      message: widget.message,
      currentUser: widget.currentUser,
      child: BlocBuilder<MessageBloc, MessageState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(
                      state.isFileDownloaded
                          ? Icons.file_present_outlined
                          : Icons.download,
                    ),
                    onPressed: () {
                      if (state.isFileDownloaded) {
                        context
                            .read<MessageBloc>()
                            .add(const MessageEvent.onBtnOpenFileTap());
                      } else {
                        context
                            .read<MessageBloc>()
                            .add(const MessageEvent.onBtnDownloadTap());
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.message.fileName ?? '',
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  // void _openFile(ChatMessage? message) {}
}
