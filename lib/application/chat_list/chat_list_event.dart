part of 'chat_list_bloc.dart';

@freezed
class ChatListEvent with _$ChatListEvent {
  const factory ChatListEvent.started() = _Started;
  const factory ChatListEvent.onChatTapped(UserChat chat) = OnChatTapped;
  const factory ChatListEvent.onChatOpen() = OnChatOpen;
}
