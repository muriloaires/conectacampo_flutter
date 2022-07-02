part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.started(
    Chat chat,
    ChatMessage message,
    ChatMessage? nextAudioToPlay,
  ) = Started;
  const factory MessageEvent.onBtnDownloadTap() = OnBtnDownloadTap;
  const factory MessageEvent.onBtnOpenFileTap() = OnBtnOpenFileTap;
  const factory MessageEvent.onBtnPlayTapped() = OnBtnPlayTapped;
  const factory MessageEvent.onAudioFinished({
    required bool isFromLoggedUser,
  }) = OnAudioFinished;
}
