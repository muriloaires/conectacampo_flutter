import 'package:cached_network_image/cached_network_image.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';

class ChatListTile extends StatelessWidget {
  const ChatListTile(this.chat, this.loggedUser, this.onTap);
  final UserChat chat;
  final User? loggedUser;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: StreamBuilder<User>(
        stream: ChatFacade().getUser(user: chat.otherUser),
        builder: (context, snapshot) {
          final user = snapshot.data;
          return user == null
              ? const CircularProgressIndicator()
              : Stack(
                  children: [
                    CircleAvatar(
                      foregroundImage: CachedNetworkImageProvider(
                        chat.otherUser.thumbAvatar?.url ?? '',
                      ),
                    ),
                    if (user.isOnline ?? false)
                      const CircleAvatar(
                        radius: 6,
                        foregroundColor: Colors.green,
                        backgroundColor: Colors.lightGreen,
                      )
                  ],
                );
        },
      ),
      title: Text(chat.otherUser.nickname ?? ''),
      subtitle: Text(_getLastMessage()),
      trailing: (chat.unreadMessages ?? 0) > 0
          ? _getUnreadMessagesLabel(chat.unreadMessages!)
          : null,
      onTap: onTap,
    );
  }

  Widget _getUnreadMessagesLabel(int unreadMessages) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorSet.green1,
      ),
      padding: const EdgeInsets.all(6),
      child: Text(
        unreadMessages.toString(),
        style: const TextStyle(color: Colors.white, fontSize: 10),
      ),
    );
  }

  String _getLastMessage() {
    final contentType = chat.lastMessage?.contentType;
    String content = '';
    switch (contentType) {
      case 'text':
        content = chat.lastMessage?.content ?? '';
        break;
      case 'audio':
        content = 'Áudio';
        break;
      case 'image':
        content = 'Imagem';
        break;
      case 'document':
        content = 'Arquivo';
        break;
      default:
    }
    if (chat.lastMessage?.sentBy.phoneNumber == loggedUser?.phoneNumber) {
      return 'Você: $content';
    } else {
      return '${chat.lastMessage?.sentBy.nickname}: $content';
    }
  }
}
