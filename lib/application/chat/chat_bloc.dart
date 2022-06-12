import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

@injectable
class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatFacade chatFacade;

  ChatBloc(this.chatFacade) : super(ChatState.initial()) {
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
      );
    });
  }
}
