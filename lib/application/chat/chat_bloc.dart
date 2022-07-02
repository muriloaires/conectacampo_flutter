// ignore_for_file: empty_catches

import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/chat_failure.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:video_player/video_player.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatFacade chatFacade;
  final Chat chat;
  Stream<List<ChatMessage>>? messageStream;
  List<ChatMessage> messages = [];

  ChatBloc(this.chatFacade, this.chat) : super(ChatState.initial()) {
    messageStream = chatFacade.getChatMessageStream(chat: chat);
    on<ChatEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          final loggedUser = await loadLoggedUser();
          emit(
            state.copyWith(
              currentChat: value.chat,
              currentUser: loggedUser,
              otherUser: value.otherUser,
            ),
          );

          await emit.forEach<List<ChatMessage>>(
            messageStream!,
            onData: (data) {
              chatFacade.clearUnreadMessages(state.currentChat!);
              messages.clear();
              messages.addAll(data.reversed.toList());
              return state.copyWith(
                messages: messages,
                doTheThing: !state.doTheThing,
              );
            },
          );
        },
        onBtnSendPressed: (OnBtnSendPressed value) async {
          final loggedUser = await loadLoggedUser();
          final chatMessage = ChatMessage.createTextChatMessage(
            value.message,
            loggedUser!,
          );
          await chatFacade.sendMessage(
            chat: state.currentChat!,
            from: loggedUser,
            to: state.otherUser!,
            message: chatMessage,
          );
          emit(state.copyWith(scrollToEnd: true));
          emit(state.copyWith(scrollToEnd: false));
        },
        onBtnSendFileTap: (OnBtnSendFileTap value) {
          emit(state.copyWith(openFilePicker: true));
        },
        onBtnSendImageTap: (OnBtnSendImageTap value) {
          emit(state.copyWith(openImagePicker: true));
        },
        onBtnSendLocationTap: (OnBtnSendLocationTap value) {
          emit(state.copyWith(openLocationPicker: true));
        },
        onFilePickerOpened: (OnFilePickerOpened value) {
          emit(state.copyWith(openFilePicker: false));
        },
        onImagePickerOpened: (OnImagePickerOpened value) {
          emit(state.copyWith(openImagePicker: false));
        },
        onLocationPickerOpened: (OnLocationPickerOpened value) {
          emit(state.copyWith(openLocationPicker: false));
        },
        onPhotoSelected: (OnPhotoSelected value) async {
          emit(state.copyWith(imageSelected: value.path));
          emit(state.copyWith(imageSelected: null));
        },
        onFileSelected: (OnFileSelected value) {
          emit(state.copyWith(fileSelected: value.path));
          emit(state.copyWith(fileSelected: null));
        },
        onFileConfirmed: (OnFileConfirmed value) async {
          final user = await loadLoggedUser();
          if (user != null) {
            emit(state.copyWith(uploadingFile: true));
            final uploadResult = await chatFacade.sendFile(File(value.path));
            emit(
              state.copyWith(
                uploadFileErrorOrSuccess: uploadResult,
              ),
            );
            if (uploadResult.isRight()) {
              final url = uploadResult.foldLeft(null, (previous, r) => r);
              final message = ChatMessage.createFileChatMessage(
                File(value.path),
                url!,
                user,
              );
              chatFacade.sendMessage(
                chat: state.currentChat!,
                from: user,
                to: state.otherUser!,
                message: message,
              );
              emit(state.copyWith(uploadingFile: false));
            }
          }
        },
        onPhotoConfirmed: (OnPhotoConfirmed value) async {
          final user = await loadLoggedUser();
          if (user != null) {
            emit(state.copyWith(uploadingFile: true));
            final uploadResult = await chatFacade.sendFile(File(value.path));
            emit(
              state.copyWith(
                uploadFileErrorOrSuccess: uploadResult,
                uploadingFile: false,
              ),
            );
            if (uploadResult.isRight()) {
              final url = uploadResult.foldLeft(null, (previous, r) => r);
              final message = ChatMessage.createImageChatMessage(
                File(value.path),
                url!,
                user,
              );
              chatFacade.sendMessage(
                chat: state.currentChat!,
                from: user,
                to: state.otherUser!,
                message: message,
              );
            }
          }
        },
        onBtnAudioFinished: (OnBtnAudioFinished value) async {
          final user = await loadLoggedUser();
          final controller = VideoPlayerController.file(value.file);
          await controller.initialize();
          final audioDuration = controller.value.duration.inMilliseconds;
          if (user != null) {
            emit(state.copyWith(uploadingFile: true));
            final uploadResult = await chatFacade.sendFile(value.file);
            emit(
              state.copyWith(
                uploadFileErrorOrSuccess: uploadResult,
                uploadingFile: false,
              ),
            );
            if (uploadResult.isRight()) {
              final url = uploadResult.foldLeft(null, (previous, r) => r);
              final message = ChatMessage.createAudioMessage(
                value.file,
                url!,
                user,
                audioDuration,
              );
              chatFacade.sendMessage(
                chat: state.currentChat!,
                from: user,
                to: state.otherUser!,
                message: message,
              );
            }
          }
        },
        onAudioFinished: (OnAudioFinished value) async {
          print('ChatBloc onAudioFinished');
          final messageIndex =
              messages.indexWhere((element) => element.id == value.message.id);
          if (messageIndex > -1) {
            try {
              final nextAudioMessage = messages[messageIndex - 1];
              if (nextAudioMessage.contentType == 'audio') {
                emit(
                  state.copyWith(
                    nextAudioToPlay: nextAudioMessage,
                    doTheThing: !state.doTheThing,
                  ),
                );
                // emit(state.copyWith(nextAudioToPlay: null));
              } else {
                emit(state.copyWith(nextAudioToPlay: null));
              }
            } catch (e) {}
          }
        },
        onAudioPlay: (OnAudioPlay value) {
          print('ChatBloc onAudioPlay');
        },
      );
    });
  }
}
