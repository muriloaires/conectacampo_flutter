part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.started(Chat chat, User otherUser) = _Started;
  const factory ChatEvent.onBtnSendPressed(String message) = OnBtnSendPressed;
  const factory ChatEvent.onBtnSendImageTap() = OnBtnSendImageTap;
  const factory ChatEvent.onBtnSendFileTap() = OnBtnSendFileTap;
  const factory ChatEvent.onBtnSendLocationTap() = OnBtnSendLocationTap;
  const factory ChatEvent.onFilePickerOpened() = OnFilePickerOpened;
  const factory ChatEvent.onImagePickerOpened() = OnImagePickerOpened;
  const factory ChatEvent.onLocationPickerOpened() = OnLocationPickerOpened;
  const factory ChatEvent.onPhotoSelected(String path) = OnPhotoSelected;
  const factory ChatEvent.onPhotoConfirmed(String path) = OnPhotoConfirmed;
  const factory ChatEvent.onFileSelected(String path) = OnFileSelected;
  const factory ChatEvent.onFileConfirmed(String path) = OnFileConfirmed;
  const factory ChatEvent.onBtnAudioFinished(File file) = OnBtnAudioFinished;
  const factory ChatEvent.onAudioPlay(ChatMessage message) = OnAudioPlay;
  const factory ChatEvent.onAudioFinished(ChatMessage message) =
      OnAudioFinished;
}
