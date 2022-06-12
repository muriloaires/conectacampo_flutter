part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required ChatMessage? message,
  }) = _MessageState;
  factory MessageState.initial() => const MessageState(
        message: null,
      );
}
