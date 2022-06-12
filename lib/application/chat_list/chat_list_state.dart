part of 'chat_list_bloc.dart';

@freezed
class ChatListState with _$ChatListState {
  const factory ChatListState({
    required User? loggedUser,
    required UserChat? userChatToOpen,
    required Chat? chatToOpen,
  }) = _ChatListState;

  factory ChatListState.initial() => const ChatListState(
        loggedUser: null,
        userChatToOpen: null,
        chatToOpen: null,
      );
}
