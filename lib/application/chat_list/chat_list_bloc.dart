import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chat_list_event.dart';
part 'chat_list_state.dart';
part 'chat_list_bloc.freezed.dart';

@Injectable()
class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  final IChatFacade chatFacade;
  ChatListBloc(this.chatFacade) : super(ChatListState.initial()) {
    on<ChatListEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          final loggedUser = await loadLoggedUser();
          emit(state.copyWith(loggedUser: loggedUser));
        },
        onChatTapped: (OnChatTapped value) async {
          final chat = await chatFacade.getChatById(value.chat.chatId);
          if (chat != null) {
            emit(state.copyWith(userChatToOpen: value.chat, chatToOpen: chat));
          }
        },
        onChatOpen: (OnChatOpen value) {
          emit(state.copyWith(chatToOpen: null));
        },
      );
    });
  }
}
