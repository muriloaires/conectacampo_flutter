import 'package:conectacampo/application/chat/chat_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/infrastructure/chat/chat_facade.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatAppBar extends AppBar {
  ChatAppBar()
      : super(
          backgroundColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back,
              color: ColorSet.green1,
            ),
          ),
          centerTitle: false,
          title: BlocConsumer<ChatBloc, ChatState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if (state.otherUser == null) {
                return const CircularProgressIndicator(
                  color: ColorSet.green1,
                );
              }
              return StreamBuilder<User>(
                builder: (context, snapshot) {
                  final user = snapshot.data;
                  return user == null
                      ? const CircularProgressIndicator(color: ColorSet.green1)
                      : Row(
                          children: [
                            const CircleAvatar(
                              radius: 20,
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  user.nickname!,
                                  style: const TextStyle(color: Colors.black),
                                ),
                                Text(
                                  user.isOnline ?? false ? 'Online' : '',
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                )
                              ],
                            ),
                          ],
                        );
                },
                stream: ChatFacade().getUser(user: state.otherUser!),
              );
            },
          ),
        );
}
