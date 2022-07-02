import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/message/baloon.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:conectacampo/presentation/util/photo_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';

class ImageMessage extends MessageWidget {
  const ImageMessage(ChatMessage message, User currentUser)
      : super(message, currentUser);

  @override
  State<MessageWidget> createState() => _ImageMessageWidgetState();
}

class _ImageMessageWidgetState extends State<MessageWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Baloon(
          message: widget.message,
          currentUser: widget.currentUser,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute(
                  builder: (context) => PhotoViewer(widget.message.fileUrl!),
                ),
              );
            },
            child: CachedNetworkImage(imageUrl: widget.message.fileUrl!),
          ),
        );
      },
    );
  }
}
