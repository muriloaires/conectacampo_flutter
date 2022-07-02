part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required Chat? chat,
    required ChatMessage? message,
    required bool isFileDownloaded,
    required int audioDuration,
    required bool isAutoPlay,
  }) = _MessageState;
  factory MessageState.initial() => const MessageState(
        chat: null,
        message: null,
        isFileDownloaded: false,
        audioDuration: 0,
        isAutoPlay: false,
      );
}
