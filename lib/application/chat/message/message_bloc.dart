import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IChatFacade chatFacade;
  MessageBloc(this.chatFacade) : super(MessageState.initial()) {
    on<MessageEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          emit(state.copyWith(message: value.message));
        },
      );
    });
  }
}
