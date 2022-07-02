import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/chat_failure.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/auth/token_repository.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

@LazySingleton(as: IChatFacade)
class ChatFacade implements IChatFacade {
  final usersRef = FirebaseFirestore.instance.collection('users');

  final chatsRef = FirebaseFirestore.instance.collection('chats');

  @override
  Future<Chat?> openChat(User otherUser) async {
    final loggedUser = await loadLoggedUser();
    if (loggedUser == null) {
      return null;
    }
    final querySnapshot = await usersRef
        .doc(loggedUser.phoneNumber)
        .collection('chats')
        .where('otherUser.phoneNumber', isEqualTo: otherUser.phoneNumber)
        .get();

    if (querySnapshot.size == 0) {
      return _createChat(loggedUser, otherUser);
    }
    final userChat = UserChat.fromFirestore(querySnapshot.docs.first);

    return Chat.fromFirestore(await chatsRef.doc(userChat.chatId).get());
  }

  Future<Chat> _createChat(User loggedUser, User otherUser) async {
    final batch = FirebaseFirestore.instance.batch();
    final chat = Chat(
      id: null,
      users: [loggedUser, otherUser],
      createdAt: null,
    );

    final chatDocRef = chatsRef.doc();
    final loggedUserChat = UserChat(
      id: null,
      otherUser: otherUser,
      chatId: chatDocRef.id,
      unreadMessages: 0,
      createdAt: null,
      updatedAt: null,
      lastMessage: null,
    );
    final otherUserChat = UserChat(
      id: null,
      otherUser: loggedUser,
      chatId: chatDocRef.id,
      unreadMessages: 0,
      createdAt: null,
      updatedAt: null,
      lastMessage: null,
    );

    batch.set(chatDocRef, chat.toJson());

    _createUserChat(batch, loggedUser, loggedUserChat);
    _createUserChat(batch, otherUser, otherUserChat);
    await batch.commit();
    return chat;
  }

  void _createUserChat(WriteBatch batch, User user, UserChat userChat) {
    final loggedUserChatRef = _getUserChatRef(user);
    batch.set(loggedUserChatRef, userChat.toJson());
  }

  DocumentReference _getUserChatRef(User user) {
    return usersRef.doc(user.phoneNumber).collection('chats').doc();
  }

  @override
  Future<void> sendMessage({
    required Chat chat,
    required User from,
    required User to,
    required ChatMessage message,
  }) async {
    final batch = FirebaseFirestore.instance.batch();
    final messageDocRef = chatsRef.doc(chat.id).collection('messages').doc();
    batch.set(messageDocRef, message.toJson());
    await updateUserChat(batch, from, chat, message);
    await updateUserChat(batch, to, chat, message);
    batch.commit();
  }

  Future<void> updateUserChat(
    WriteBatch batch,
    User user,
    Chat chat,
    ChatMessage message,
  ) async {
    final userChatDocsRef = await usersRef
        .doc(user.phoneNumber)
        .collection('chats')
        .where('chatId', isEqualTo: chat.id)
        .get();
    for (final element in userChatDocsRef.docs) {
      final userChat =
          usersRef.doc(user.phoneNumber).collection('chats').doc(element.id);
      batch.update(userChat, {
        'updatedAt': FieldValue.serverTimestamp(),
        'lastMessage': message.toJson(),
        'unreadMessages': FieldValue.increment(1),
      });
    }
  }

  @override
  Future<List<ChatMessage>> loadMessages({required Chat chat}) async {
    final docs = await chatsRef.doc(chat.id).collection('messages').get();
    final chats = docs.docs.map((e) => ChatMessage.fromFirestore(e)).toList();
    return chats;
  }

  @override
  Stream<List<ChatMessage>>? getChatMessageStream({required Chat? chat}) {
    if (chat == null) return null;
    return chatsRef
        .doc(chat.id)
        .collection('messages')
        .orderBy('sentAt')
        .snapshots(includeMetadataChanges: true)
        .map(
          (event) =>
              event.docs.map((e) => ChatMessage.fromFirestore(e)).toList(),
        );
  }

  @override
  Stream<List<UserChat>>? getUserChats({required User loggedUser}) {
    return usersRef
        .doc(loggedUser.phoneNumber)
        .collection('chats')
        .orderBy('updatedAt')
        .snapshots()
        .map(
          (event) => event.docs.map((e) => UserChat.fromFirestore(e)).toList(),
        );
  }

  @override
  Future<Chat?> getChatById(String chatId) async {
    final docRef = await chatsRef.doc(chatId).get();
    return Chat.fromFirestore(docRef);
  }

  @override
  Future<Either<ChatFailure, String>> sendFile(File file) async {
    final url = Uri.https(baseUrl, '$apiVersion2/uploads');
    final request = http.MultipartRequest(
      'POST',
      url,
    );
    request.headers.addAll(getApiHeader());
    request.files.add(await http.MultipartFile.fromPath('file', file.path));
    request.headers
        .addAll({'Authorization': 'Bearer ${await getCurrentAcessToken()}'});
    final response = await request.send();
    final code = response.statusCode;

    if (code >= 200 && code < 300) {
      final responseString = await response.stream.bytesToString();
      return right(jsonDecode(responseString)['url'] as String);
    } else if (code == 401) {
      return left(const ChatFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ChatFailure.applicationError());
    } else {
      return left(const ChatFailure.serverError());
    }
  }

  @override
  Future<Either<ChatFailure, File>> downloadFile(ChatMessage message) async {
    final fileUrl = message.fileUrl;
    if (fileUrl == null) {
      return left(const ChatFailure.fileNotDownloaded());
    }
    final response = await http.get(Uri.parse(fileUrl));
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final dir = (await getApplicationDocumentsDirectory()).path;
      final file = File('$dir/${message.id}.${extension(message.fileName!)}');
      file.writeAsBytes(response.bodyBytes);
      return right(file);
    }
    return left(const ChatFailure.fileNotDownloaded());
  }

  @override
  Future<void> setChatStatus({required bool isOnline}) async {
    final user = await loadLoggedUser();
    if (user == null) {
      return;
    }
    await usersRef
        .doc(user.phoneNumber!)
        .set(user.copyWith(isOnline: isOnline).toJson());
  }

  @override
  Stream<User>? getUser({required User user}) {
    return usersRef
        .doc(user.phoneNumber)
        .snapshots(includeMetadataChanges: true)
        .map((event) => User.fromJson(event.data()!));
  }

  @override
  Future<void> clearUnreadMessages(Chat chat) async {
    final user = await loadLoggedUser();
    final userChatQS = await usersRef
        .doc(user?.phoneNumber)
        .collection('chats')
        .where('chatId', isEqualTo: chat.id)
        .get();

    for (final document in userChatQS.docs) {
      await usersRef
          .doc(user?.phoneNumber)
          .collection('chats')
          .doc(document.id)
          .update({'unreadMessages': 0});
    }
  }

  @override
  Future<void> updateChatMessage(Chat chat, ChatMessage chatMessage) async {
    await chatsRef
        .doc(chat.id)
        .collection('messages')
        .doc(chatMessage.id)
        .update({'audioReproduced': true});
  }
}
