import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/chat_failure.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:dartz/dartz.dart';

abstract class IChatFacade {
  Future<Chat?> openChat(User otherUser);

  Future<List<ChatMessage>> loadMessages({required Chat chat});

  Future<void> sendMessage({
    required Chat chat,
    required User from,
    required User to,
    required ChatMessage message,
  });

  Stream<List<ChatMessage>>? getChatMessageStream({required Chat? chat});

  Stream<List<UserChat>>? getUserChats({required User loggedUser});

  Future<Chat?> getChatById(String chatId);

  Future<Either<ChatFailure, Unit>> sendFile(String avatarPath);
}
