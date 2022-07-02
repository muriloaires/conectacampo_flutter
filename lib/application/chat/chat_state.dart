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
    required bool scrollToEnd,
    required bool clearText,
    required Either<ChatFailure, String>? uploadFileErrorOrSuccess,
    required bool uploadingFile,
    required ChatMessage? nextAudioToPlay,
    required String? playingAudio,
    required bool doTheThing,
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
        scrollToEnd: false,
        clearText: false,
        uploadingFile: false,
        uploadFileErrorOrSuccess: null,
        nextAudioToPlay: null,
        playingAudio: null,
        doTheThing: false,
      );
}
