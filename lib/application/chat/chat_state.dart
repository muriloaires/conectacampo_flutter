part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    required List<ChatMessage> messages,
    required Chat? currentChat,
    required User? currentUser,
    required User? otherUser,
    required bool openImagePicker,
    required bool openFilePicker,
    required bool openLocationPicker,
    required String? imageSelected,
    required String? fileSelected,
    required String? locationSelected,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(
        messages: [],
        currentChat: null,
        currentUser: null,
        otherUser: null,
        openImagePicker: false,
        openFilePicker: false,
        openLocationPicker: false,
        imageSelected: null,
        fileSelected: null,
        locationSelected: null,
      );
}
