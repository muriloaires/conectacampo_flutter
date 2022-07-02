import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/chat/chat.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/domain/chat/i_chat_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:open_file/open_file.dart' as open;
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

part 'message_bloc.freezed.dart';
part 'message_event.dart';
part 'message_state.dart';

@injectable
class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final IChatFacade chatFacade;
  MessageBloc(this.chatFacade) : super(MessageState.initial()) {
    on<MessageEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          print('ChatBloc MessageBloc started');
          final isFileDownloaded = await checkIfFileIsDownloaded(value.message);
          emit(
            state.copyWith(
              chat: value.chat,
              message: value.message,
              isFileDownloaded: isFileDownloaded,
              audioDuration: value.message.audioDuration ?? 0,
            ),
          );
          emit(
            state.copyWith(
              isAutoPlay: value.message.id == value.nextAudioToPlay?.id,
            ),
          );
        },
        onBtnDownloadTap: (OnBtnDownloadTap value) async {
          final downloadErrorOrSuccess =
              await chatFacade.downloadFile(state.message!);
          downloadErrorOrSuccess.fold(
            (l) {},
            (r) {
              emit(state.copyWith(isFileDownloaded: true));
              open.OpenFile.open(r.path);
            },
          );
        },
        onBtnOpenFileTap: (OnBtnOpenFileTap value) {},
        onBtnPlayTapped: (OnBtnPlayTapped value) async {},
        onAudioFinished: (OnAudioFinished value) async {
          if (!value.isFromLoggedUser) {
            await chatFacade.updateChatMessage(
              state.chat!,
              state.message!.copyWith(audioReproduced: true),
            );
          }
        },
      );
    });
  }

  Future<bool> checkIfFileIsDownloaded(ChatMessage message) async {
    final fileName = message.fileName;
    if (fileName == null) {
      return false;
    }
    final appDocumentsDirectory = await getApplicationDocumentsDirectory(); // 1
    final appDocumentsPath = appDocumentsDirectory.path; // 2
    final filePath =
        '$appDocumentsPath/${message.id}.${extension(fileName)}'; // 3
    return File(filePath).exists();
  }
}
