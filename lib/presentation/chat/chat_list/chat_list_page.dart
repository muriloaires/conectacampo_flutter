import 'package:conectacampo/application/chat_list/chat_list_bloc.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/injection.dart';
import 'package:conectacampo/presentation/chat/chat_list/widgets/chat_list_tile.dart';
import 'package:conectacampo/presentation/chat/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ChatListBloc>(
      create: (context) => getIt()..add(const ChatListEvent.started()),
      child: BlocConsumer<ChatListBloc, ChatListState>(
        listener: (context, state) {
          if (state.userChatToOpen != null) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ChatPage(
                  state.userChatToOpen!.otherUser,
                  state.chatToOpen!,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(),
            body: StreamBuilder(
              stream: state.loggedUser == null
                  ? null
                  : ChatFacade().getUserChats(loggedUser: state.loggedUser!),
              builder: (
                BuildContext context,
                AsyncSnapshot<List<UserChat>> snapshot,
              ) {
                if (!snapshot.hasData) {
                  return const CircularProgressIndicator();
                } else {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      final chat = snapshot.data![index];
                      return ChatListTile(
                        chat,
                        state.loggedUser,
                        () {
                          context
                              .read<ChatListBloc>()
                              .add(ChatListEvent.onChatTapped(chat));
                        },
                      );
                    },
                    itemCount: snapshot.data!.length,
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }
}
