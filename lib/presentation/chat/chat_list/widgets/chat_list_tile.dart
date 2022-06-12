import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile(this.chat, this.loggedUser, this.onTap);
  final UserChat chat;
  final User? loggedUser;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        foregroundImage: CachedNetworkImageProvider(
          chat.otherUser.thumbAvatar?.url ?? '',
        ),
      ),
      title: Text(chat.otherUser.nickname ?? ''),
      subtitle: Text(_getLastMessage()),
      onTap: onTap,
    );
  }

  String _getLastMessage() {
    if (chat.lastMessage?.sentBy.phoneNumber == loggedUser?.phoneNumber) {
      return 'Você: ${chat.lastMessage?.content}';
    } else {
      return '${chat.lastMessage?.sentBy.nickname}: ${chat.lastMessage?.content}';
    }
  }
}
