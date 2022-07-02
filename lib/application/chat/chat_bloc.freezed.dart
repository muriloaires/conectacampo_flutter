// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _Started started(Chat chat, User otherUser) {
    return _Started(
      chat,
      otherUser,
    );
  }

  OnBtnSendPressed onBtnSendPressed(String message) {
    return OnBtnSendPressed(
      message,
    );
  }

  OnBtnSendImageTap onBtnSendImageTap() {
    return const OnBtnSendImageTap();
  }

  OnBtnSendFileTap onBtnSendFileTap() {
    return const OnBtnSendFileTap();
  }

  OnBtnSendLocationTap onBtnSendLocationTap() {
    return const OnBtnSendLocationTap();
  }

  OnFilePickerOpened onFilePickerOpened() {
    return const OnFilePickerOpened();
  }

  OnImagePickerOpened onImagePickerOpened() {
    return const OnImagePickerOpened();
  }

  OnLocationPickerOpened onLocationPickerOpened() {
    return const OnLocationPickerOpened();
  }

  OnPhotoSelected onPhotoSelected(String path) {
    return OnPhotoSelected(
      path,
    );
  }

  OnPhotoConfirmed onPhotoConfirmed(String path) {
    return OnPhotoConfirmed(
      path,
    );
  }

  OnFileSelected onFileSelected(String path) {
    return OnFileSelected(
      path,
    );
  }

  OnFileConfirmed onFileConfirmed(String path) {
    return OnFileConfirmed(
      path,
    );
  }

  OnBtnAudioFinished onBtnAudioFinished(File file) {
    return OnBtnAudioFinished(
      file,
    );
  }

  OnAudioPlay onAudioPlay(ChatMessage message) {
    return OnAudioPlay(
      message,
    );
  }

  OnAudioFinished onAudioFinished(ChatMessage message) {
    return OnAudioFinished(
      message,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Chat chat, User otherUser});

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res> get otherUser;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? chat = freezed,
    Object? otherUser = freezed,
  }) {
    return _then(_Started(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  @override
  $UserCopyWith<$Res> get otherUser {
    return $UserCopyWith<$Res>(_value.otherUser, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.chat, this.otherUser);

  @override
  final Chat chat;
  @override
  final User otherUser;

  @override
  String toString() {
    return 'ChatEvent.started(chat: $chat, otherUser: $otherUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(otherUser);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return started(chat, otherUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chat, otherUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started(Chat chat, User otherUser) = _$_Started;

  Chat get chat => throw _privateConstructorUsedError;
  User get otherUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnSendPressedCopyWith<$Res> {
  factory $OnBtnSendPressedCopyWith(
          OnBtnSendPressed value, $Res Function(OnBtnSendPressed) then) =
      _$OnBtnSendPressedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$OnBtnSendPressedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendPressedCopyWith<$Res> {
  _$OnBtnSendPressedCopyWithImpl(
      OnBtnSendPressed _value, $Res Function(OnBtnSendPressed) _then)
      : super(_value, (v) => _then(v as OnBtnSendPressed));

  @override
  OnBtnSendPressed get _value => super._value as OnBtnSendPressed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(OnBtnSendPressed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnBtnSendPressed implements OnBtnSendPressed {
  const _$OnBtnSendPressed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.onBtnSendPressed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBtnSendPressed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OnBtnSendPressedCopyWith<OnBtnSendPressed> get copyWith =>
      _$OnBtnSendPressedCopyWithImpl<OnBtnSendPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onBtnSendPressed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendPressed != null) {
      return onBtnSendPressed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnSendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendPressed != null) {
      return onBtnSendPressed(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendPressed implements ChatEvent {
  const factory OnBtnSendPressed(String message) = _$OnBtnSendPressed;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBtnSendPressedCopyWith<OnBtnSendPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnSendImageTapCopyWith<$Res> {
  factory $OnBtnSendImageTapCopyWith(
          OnBtnSendImageTap value, $Res Function(OnBtnSendImageTap) then) =
      _$OnBtnSendImageTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendImageTapCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendImageTapCopyWith<$Res> {
  _$OnBtnSendImageTapCopyWithImpl(
      OnBtnSendImageTap _value, $Res Function(OnBtnSendImageTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendImageTap));

  @override
  OnBtnSendImageTap get _value => super._value as OnBtnSendImageTap;
}

/// @nodoc

class _$OnBtnSendImageTap implements OnBtnSendImageTap {
  const _$OnBtnSendImageTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendImageTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendImageTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onBtnSendImageTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendImageTap != null) {
      return onBtnSendImageTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnSendImageTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendImageTap != null) {
      return onBtnSendImageTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendImageTap implements ChatEvent {
  const factory OnBtnSendImageTap() = _$OnBtnSendImageTap;
}

/// @nodoc
abstract class $OnBtnSendFileTapCopyWith<$Res> {
  factory $OnBtnSendFileTapCopyWith(
          OnBtnSendFileTap value, $Res Function(OnBtnSendFileTap) then) =
      _$OnBtnSendFileTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendFileTapCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendFileTapCopyWith<$Res> {
  _$OnBtnSendFileTapCopyWithImpl(
      OnBtnSendFileTap _value, $Res Function(OnBtnSendFileTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendFileTap));

  @override
  OnBtnSendFileTap get _value => super._value as OnBtnSendFileTap;
}

/// @nodoc

class _$OnBtnSendFileTap implements OnBtnSendFileTap {
  const _$OnBtnSendFileTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendFileTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendFileTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onBtnSendFileTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendFileTap != null) {
      return onBtnSendFileTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnSendFileTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendFileTap != null) {
      return onBtnSendFileTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendFileTap implements ChatEvent {
  const factory OnBtnSendFileTap() = _$OnBtnSendFileTap;
}

/// @nodoc
abstract class $OnBtnSendLocationTapCopyWith<$Res> {
  factory $OnBtnSendLocationTapCopyWith(OnBtnSendLocationTap value,
          $Res Function(OnBtnSendLocationTap) then) =
      _$OnBtnSendLocationTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendLocationTapCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendLocationTapCopyWith<$Res> {
  _$OnBtnSendLocationTapCopyWithImpl(
      OnBtnSendLocationTap _value, $Res Function(OnBtnSendLocationTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendLocationTap));

  @override
  OnBtnSendLocationTap get _value => super._value as OnBtnSendLocationTap;
}

/// @nodoc

class _$OnBtnSendLocationTap implements OnBtnSendLocationTap {
  const _$OnBtnSendLocationTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendLocationTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendLocationTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onBtnSendLocationTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendLocationTap != null) {
      return onBtnSendLocationTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnSendLocationTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnSendLocationTap != null) {
      return onBtnSendLocationTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendLocationTap implements ChatEvent {
  const factory OnBtnSendLocationTap() = _$OnBtnSendLocationTap;
}

/// @nodoc
abstract class $OnFilePickerOpenedCopyWith<$Res> {
  factory $OnFilePickerOpenedCopyWith(
          OnFilePickerOpened value, $Res Function(OnFilePickerOpened) then) =
      _$OnFilePickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnFilePickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnFilePickerOpenedCopyWith<$Res> {
  _$OnFilePickerOpenedCopyWithImpl(
      OnFilePickerOpened _value, $Res Function(OnFilePickerOpened) _then)
      : super(_value, (v) => _then(v as OnFilePickerOpened));

  @override
  OnFilePickerOpened get _value => super._value as OnFilePickerOpened;
}

/// @nodoc

class _$OnFilePickerOpened implements OnFilePickerOpened {
  const _$OnFilePickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onFilePickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnFilePickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onFilePickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFilePickerOpened != null) {
      return onFilePickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onFilePickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFilePickerOpened != null) {
      return onFilePickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnFilePickerOpened implements ChatEvent {
  const factory OnFilePickerOpened() = _$OnFilePickerOpened;
}

/// @nodoc
abstract class $OnImagePickerOpenedCopyWith<$Res> {
  factory $OnImagePickerOpenedCopyWith(
          OnImagePickerOpened value, $Res Function(OnImagePickerOpened) then) =
      _$OnImagePickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnImagePickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnImagePickerOpenedCopyWith<$Res> {
  _$OnImagePickerOpenedCopyWithImpl(
      OnImagePickerOpened _value, $Res Function(OnImagePickerOpened) _then)
      : super(_value, (v) => _then(v as OnImagePickerOpened));

  @override
  OnImagePickerOpened get _value => super._value as OnImagePickerOpened;
}

/// @nodoc

class _$OnImagePickerOpened implements OnImagePickerOpened {
  const _$OnImagePickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onImagePickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnImagePickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onImagePickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onImagePickerOpened != null) {
      return onImagePickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onImagePickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onImagePickerOpened != null) {
      return onImagePickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnImagePickerOpened implements ChatEvent {
  const factory OnImagePickerOpened() = _$OnImagePickerOpened;
}

/// @nodoc
abstract class $OnLocationPickerOpenedCopyWith<$Res> {
  factory $OnLocationPickerOpenedCopyWith(OnLocationPickerOpened value,
          $Res Function(OnLocationPickerOpened) then) =
      _$OnLocationPickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLocationPickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnLocationPickerOpenedCopyWith<$Res> {
  _$OnLocationPickerOpenedCopyWithImpl(OnLocationPickerOpened _value,
      $Res Function(OnLocationPickerOpened) _then)
      : super(_value, (v) => _then(v as OnLocationPickerOpened));

  @override
  OnLocationPickerOpened get _value => super._value as OnLocationPickerOpened;
}

/// @nodoc

class _$OnLocationPickerOpened implements OnLocationPickerOpened {
  const _$OnLocationPickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onLocationPickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLocationPickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onLocationPickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onLocationPickerOpened != null) {
      return onLocationPickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onLocationPickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onLocationPickerOpened != null) {
      return onLocationPickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnLocationPickerOpened implements ChatEvent {
  const factory OnLocationPickerOpened() = _$OnLocationPickerOpened;
}

/// @nodoc
abstract class $OnPhotoSelectedCopyWith<$Res> {
  factory $OnPhotoSelectedCopyWith(
          OnPhotoSelected value, $Res Function(OnPhotoSelected) then) =
      _$OnPhotoSelectedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnPhotoSelectedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnPhotoSelectedCopyWith<$Res> {
  _$OnPhotoSelectedCopyWithImpl(
      OnPhotoSelected _value, $Res Function(OnPhotoSelected) _then)
      : super(_value, (v) => _then(v as OnPhotoSelected));

  @override
  OnPhotoSelected get _value => super._value as OnPhotoSelected;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnPhotoSelected(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPhotoSelected implements OnPhotoSelected {
  const _$OnPhotoSelected(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onPhotoSelected(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnPhotoSelected &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnPhotoSelectedCopyWith<OnPhotoSelected> get copyWith =>
      _$OnPhotoSelectedCopyWithImpl<OnPhotoSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onPhotoSelected(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onPhotoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class OnPhotoSelected implements ChatEvent {
  const factory OnPhotoSelected(String path) = _$OnPhotoSelected;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnPhotoSelectedCopyWith<OnPhotoSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnPhotoConfirmedCopyWith<$Res> {
  factory $OnPhotoConfirmedCopyWith(
          OnPhotoConfirmed value, $Res Function(OnPhotoConfirmed) then) =
      _$OnPhotoConfirmedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnPhotoConfirmedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnPhotoConfirmedCopyWith<$Res> {
  _$OnPhotoConfirmedCopyWithImpl(
      OnPhotoConfirmed _value, $Res Function(OnPhotoConfirmed) _then)
      : super(_value, (v) => _then(v as OnPhotoConfirmed));

  @override
  OnPhotoConfirmed get _value => super._value as OnPhotoConfirmed;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnPhotoConfirmed(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPhotoConfirmed implements OnPhotoConfirmed {
  const _$OnPhotoConfirmed(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onPhotoConfirmed(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnPhotoConfirmed &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnPhotoConfirmedCopyWith<OnPhotoConfirmed> get copyWith =>
      _$OnPhotoConfirmedCopyWithImpl<OnPhotoConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onPhotoConfirmed(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onPhotoConfirmed != null) {
      return onPhotoConfirmed(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onPhotoConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onPhotoConfirmed != null) {
      return onPhotoConfirmed(this);
    }
    return orElse();
  }
}

abstract class OnPhotoConfirmed implements ChatEvent {
  const factory OnPhotoConfirmed(String path) = _$OnPhotoConfirmed;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnPhotoConfirmedCopyWith<OnPhotoConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnFileSelectedCopyWith<$Res> {
  factory $OnFileSelectedCopyWith(
          OnFileSelected value, $Res Function(OnFileSelected) then) =
      _$OnFileSelectedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnFileSelectedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnFileSelectedCopyWith<$Res> {
  _$OnFileSelectedCopyWithImpl(
      OnFileSelected _value, $Res Function(OnFileSelected) _then)
      : super(_value, (v) => _then(v as OnFileSelected));

  @override
  OnFileSelected get _value => super._value as OnFileSelected;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnFileSelected(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFileSelected implements OnFileSelected {
  const _$OnFileSelected(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onFileSelected(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFileSelected &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnFileSelectedCopyWith<OnFileSelected> get copyWith =>
      _$OnFileSelectedCopyWithImpl<OnFileSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onFileSelected(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFileSelected != null) {
      return onFileSelected(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onFileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFileSelected != null) {
      return onFileSelected(this);
    }
    return orElse();
  }
}

abstract class OnFileSelected implements ChatEvent {
  const factory OnFileSelected(String path) = _$OnFileSelected;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnFileSelectedCopyWith<OnFileSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnFileConfirmedCopyWith<$Res> {
  factory $OnFileConfirmedCopyWith(
          OnFileConfirmed value, $Res Function(OnFileConfirmed) then) =
      _$OnFileConfirmedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnFileConfirmedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnFileConfirmedCopyWith<$Res> {
  _$OnFileConfirmedCopyWithImpl(
      OnFileConfirmed _value, $Res Function(OnFileConfirmed) _then)
      : super(_value, (v) => _then(v as OnFileConfirmed));

  @override
  OnFileConfirmed get _value => super._value as OnFileConfirmed;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnFileConfirmed(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFileConfirmed implements OnFileConfirmed {
  const _$OnFileConfirmed(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onFileConfirmed(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFileConfirmed &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnFileConfirmedCopyWith<OnFileConfirmed> get copyWith =>
      _$OnFileConfirmedCopyWithImpl<OnFileConfirmed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onFileConfirmed(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFileConfirmed != null) {
      return onFileConfirmed(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onFileConfirmed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onFileConfirmed != null) {
      return onFileConfirmed(this);
    }
    return orElse();
  }
}

abstract class OnFileConfirmed implements ChatEvent {
  const factory OnFileConfirmed(String path) = _$OnFileConfirmed;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnFileConfirmedCopyWith<OnFileConfirmed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnAudioFinishedCopyWith<$Res> {
  factory $OnBtnAudioFinishedCopyWith(
          OnBtnAudioFinished value, $Res Function(OnBtnAudioFinished) then) =
      _$OnBtnAudioFinishedCopyWithImpl<$Res>;
  $Res call({File file});
}

/// @nodoc
class _$OnBtnAudioFinishedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnAudioFinishedCopyWith<$Res> {
  _$OnBtnAudioFinishedCopyWithImpl(
      OnBtnAudioFinished _value, $Res Function(OnBtnAudioFinished) _then)
      : super(_value, (v) => _then(v as OnBtnAudioFinished));

  @override
  OnBtnAudioFinished get _value => super._value as OnBtnAudioFinished;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(OnBtnAudioFinished(
      file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$OnBtnAudioFinished implements OnBtnAudioFinished {
  const _$OnBtnAudioFinished(this.file);

  @override
  final File file;

  @override
  String toString() {
    return 'ChatEvent.onBtnAudioFinished(file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBtnAudioFinished &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(file);

  @JsonKey(ignore: true)
  @override
  $OnBtnAudioFinishedCopyWith<OnBtnAudioFinished> get copyWith =>
      _$OnBtnAudioFinishedCopyWithImpl<OnBtnAudioFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onBtnAudioFinished(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnAudioFinished != null) {
      return onBtnAudioFinished(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnAudioFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnAudioFinished != null) {
      return onBtnAudioFinished(this);
    }
    return orElse();
  }
}

abstract class OnBtnAudioFinished implements ChatEvent {
  const factory OnBtnAudioFinished(File file) = _$OnBtnAudioFinished;

  File get file => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBtnAudioFinishedCopyWith<OnBtnAudioFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnAudioPlayCopyWith<$Res> {
  factory $OnAudioPlayCopyWith(
          OnAudioPlay value, $Res Function(OnAudioPlay) then) =
      _$OnAudioPlayCopyWithImpl<$Res>;
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$OnAudioPlayCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnAudioPlayCopyWith<$Res> {
  _$OnAudioPlayCopyWithImpl(
      OnAudioPlay _value, $Res Function(OnAudioPlay) _then)
      : super(_value, (v) => _then(v as OnAudioPlay));

  @override
  OnAudioPlay get _value => super._value as OnAudioPlay;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(OnAudioPlay(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  @override
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$OnAudioPlay implements OnAudioPlay {
  const _$OnAudioPlay(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.onAudioPlay(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAudioPlay &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OnAudioPlayCopyWith<OnAudioPlay> get copyWith =>
      _$OnAudioPlayCopyWithImpl<OnAudioPlay>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onAudioPlay(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioPlay != null) {
      return onAudioPlay(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onAudioPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioPlay != null) {
      return onAudioPlay(this);
    }
    return orElse();
  }
}

abstract class OnAudioPlay implements ChatEvent {
  const factory OnAudioPlay(ChatMessage message) = _$OnAudioPlay;

  ChatMessage get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnAudioPlayCopyWith<OnAudioPlay> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnAudioFinishedCopyWith<$Res> {
  factory $OnAudioFinishedCopyWith(
          OnAudioFinished value, $Res Function(OnAudioFinished) then) =
      _$OnAudioFinishedCopyWithImpl<$Res>;
  $Res call({ChatMessage message});

  $ChatMessageCopyWith<$Res> get message;
}

/// @nodoc
class _$OnAudioFinishedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnAudioFinishedCopyWith<$Res> {
  _$OnAudioFinishedCopyWithImpl(
      OnAudioFinished _value, $Res Function(OnAudioFinished) _then)
      : super(_value, (v) => _then(v as OnAudioFinished));

  @override
  OnAudioFinished get _value => super._value as OnAudioFinished;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(OnAudioFinished(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
    ));
  }

  @override
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc

class _$OnAudioFinished implements OnAudioFinished {
  const _$OnAudioFinished(this.message);

  @override
  final ChatMessage message;

  @override
  String toString() {
    return 'ChatEvent.onAudioFinished(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAudioFinished &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OnAudioFinishedCopyWith<OnAudioFinished> get copyWith =>
      _$OnAudioFinishedCopyWithImpl<OnAudioFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onPhotoConfirmed,
    required TResult Function(String path) onFileSelected,
    required TResult Function(String path) onFileConfirmed,
    required TResult Function(File file) onBtnAudioFinished,
    required TResult Function(ChatMessage message) onAudioPlay,
    required TResult Function(ChatMessage message) onAudioFinished,
  }) {
    return onAudioFinished(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onPhotoConfirmed,
    TResult Function(String path)? onFileSelected,
    TResult Function(String path)? onFileConfirmed,
    TResult Function(File file)? onBtnAudioFinished,
    TResult Function(ChatMessage message)? onAudioPlay,
    TResult Function(ChatMessage message)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioFinished != null) {
      return onAudioFinished(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnPhotoConfirmed value) onPhotoConfirmed,
    required TResult Function(OnFileSelected value) onFileSelected,
    required TResult Function(OnFileConfirmed value) onFileConfirmed,
    required TResult Function(OnBtnAudioFinished value) onBtnAudioFinished,
    required TResult Function(OnAudioPlay value) onAudioPlay,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onAudioFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnPhotoConfirmed value)? onPhotoConfirmed,
    TResult Function(OnFileSelected value)? onFileSelected,
    TResult Function(OnFileConfirmed value)? onFileConfirmed,
    TResult Function(OnBtnAudioFinished value)? onBtnAudioFinished,
    TResult Function(OnAudioPlay value)? onAudioPlay,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioFinished != null) {
      return onAudioFinished(this);
    }
    return orElse();
  }
}

abstract class OnAudioFinished implements ChatEvent {
  const factory OnAudioFinished(ChatMessage message) = _$OnAudioFinished;

  ChatMessage get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnAudioFinishedCopyWith<OnAudioFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<ChatMessage> messages,
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
      required bool doTheThing}) {
    return _ChatState(
      messages: messages,
      currentChat: currentChat,
      currentUser: currentUser,
      otherUser: otherUser,
      openImagePicker: openImagePicker,
      openFilePicker: openFilePicker,
      openLocationPicker: openLocationPicker,
      imageSelected: imageSelected,
      fileSelected: fileSelected,
      locationSelected: locationSelected,
      scrollToEnd: scrollToEnd,
      clearText: clearText,
      uploadFileErrorOrSuccess: uploadFileErrorOrSuccess,
      uploadingFile: uploadingFile,
      nextAudioToPlay: nextAudioToPlay,
      playingAudio: playingAudio,
      doTheThing: doTheThing,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  Chat? get currentChat => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  User? get otherUser => throw _privateConstructorUsedError;
  bool get openImagePicker => throw _privateConstructorUsedError;
  bool get openFilePicker => throw _privateConstructorUsedError;
  bool get openLocationPicker => throw _privateConstructorUsedError;
  String? get imageSelected => throw _privateConstructorUsedError;
  String? get fileSelected => throw _privateConstructorUsedError;
  String? get locationSelected => throw _privateConstructorUsedError;
  bool get scrollToEnd => throw _privateConstructorUsedError;
  bool get clearText => throw _privateConstructorUsedError;
  Either<ChatFailure, String>? get uploadFileErrorOrSuccess =>
      throw _privateConstructorUsedError;
  bool get uploadingFile => throw _privateConstructorUsedError;
  ChatMessage? get nextAudioToPlay => throw _privateConstructorUsedError;
  String? get playingAudio => throw _privateConstructorUsedError;
  bool get doTheThing => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatMessage> messages,
      Chat? currentChat,
      User? currentUser,
      User? otherUser,
      bool openImagePicker,
      bool openFilePicker,
      bool openLocationPicker,
      String? imageSelected,
      String? fileSelected,
      String? locationSelected,
      bool scrollToEnd,
      bool clearText,
      Either<ChatFailure, String>? uploadFileErrorOrSuccess,
      bool uploadingFile,
      ChatMessage? nextAudioToPlay,
      String? playingAudio,
      bool doTheThing});

  $ChatCopyWith<$Res>? get currentChat;
  $UserCopyWith<$Res>? get currentUser;
  $UserCopyWith<$Res>? get otherUser;
  $ChatMessageCopyWith<$Res>? get nextAudioToPlay;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? currentChat = freezed,
    Object? currentUser = freezed,
    Object? otherUser = freezed,
    Object? openImagePicker = freezed,
    Object? openFilePicker = freezed,
    Object? openLocationPicker = freezed,
    Object? imageSelected = freezed,
    Object? fileSelected = freezed,
    Object? locationSelected = freezed,
    Object? scrollToEnd = freezed,
    Object? clearText = freezed,
    Object? uploadFileErrorOrSuccess = freezed,
    Object? uploadingFile = freezed,
    Object? nextAudioToPlay = freezed,
    Object? playingAudio = freezed,
    Object? doTheThing = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      currentChat: currentChat == freezed
          ? _value.currentChat
          : currentChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      openImagePicker: openImagePicker == freezed
          ? _value.openImagePicker
          : openImagePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openFilePicker: openFilePicker == freezed
          ? _value.openFilePicker
          : openFilePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openLocationPicker: openLocationPicker == freezed
          ? _value.openLocationPicker
          : openLocationPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: imageSelected == freezed
          ? _value.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSelected: fileSelected == freezed
          ? _value.fileSelected
          : fileSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelected: locationSelected == freezed
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollToEnd: scrollToEnd == freezed
          ? _value.scrollToEnd
          : scrollToEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      clearText: clearText == freezed
          ? _value.clearText
          : clearText // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileErrorOrSuccess: uploadFileErrorOrSuccess == freezed
          ? _value.uploadFileErrorOrSuccess
          : uploadFileErrorOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ChatFailure, String>?,
      uploadingFile: uploadingFile == freezed
          ? _value.uploadingFile
          : uploadingFile // ignore: cast_nullable_to_non_nullable
              as bool,
      nextAudioToPlay: nextAudioToPlay == freezed
          ? _value.nextAudioToPlay
          : nextAudioToPlay // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      playingAudio: playingAudio == freezed
          ? _value.playingAudio
          : playingAudio // ignore: cast_nullable_to_non_nullable
              as String?,
      doTheThing: doTheThing == freezed
          ? _value.doTheThing
          : doTheThing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ChatCopyWith<$Res>? get currentChat {
    if (_value.currentChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.currentChat!, (value) {
      return _then(_value.copyWith(currentChat: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get otherUser {
    if (_value.otherUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.otherUser!, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }

  @override
  $ChatMessageCopyWith<$Res>? get nextAudioToPlay {
    if (_value.nextAudioToPlay == null) {
      return null;
    }

    return $ChatMessageCopyWith<$Res>(_value.nextAudioToPlay!, (value) {
      return _then(_value.copyWith(nextAudioToPlay: value));
    });
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ChatMessage> messages,
      Chat? currentChat,
      User? currentUser,
      User? otherUser,
      bool openImagePicker,
      bool openFilePicker,
      bool openLocationPicker,
      String? imageSelected,
      String? fileSelected,
      String? locationSelected,
      bool scrollToEnd,
      bool clearText,
      Either<ChatFailure, String>? uploadFileErrorOrSuccess,
      bool uploadingFile,
      ChatMessage? nextAudioToPlay,
      String? playingAudio,
      bool doTheThing});

  @override
  $ChatCopyWith<$Res>? get currentChat;
  @override
  $UserCopyWith<$Res>? get currentUser;
  @override
  $UserCopyWith<$Res>? get otherUser;
  @override
  $ChatMessageCopyWith<$Res>? get nextAudioToPlay;
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? currentChat = freezed,
    Object? currentUser = freezed,
    Object? otherUser = freezed,
    Object? openImagePicker = freezed,
    Object? openFilePicker = freezed,
    Object? openLocationPicker = freezed,
    Object? imageSelected = freezed,
    Object? fileSelected = freezed,
    Object? locationSelected = freezed,
    Object? scrollToEnd = freezed,
    Object? clearText = freezed,
    Object? uploadFileErrorOrSuccess = freezed,
    Object? uploadingFile = freezed,
    Object? nextAudioToPlay = freezed,
    Object? playingAudio = freezed,
    Object? doTheThing = freezed,
  }) {
    return _then(_ChatState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      currentChat: currentChat == freezed
          ? _value.currentChat
          : currentChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      openImagePicker: openImagePicker == freezed
          ? _value.openImagePicker
          : openImagePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openFilePicker: openFilePicker == freezed
          ? _value.openFilePicker
          : openFilePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openLocationPicker: openLocationPicker == freezed
          ? _value.openLocationPicker
          : openLocationPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: imageSelected == freezed
          ? _value.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSelected: fileSelected == freezed
          ? _value.fileSelected
          : fileSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelected: locationSelected == freezed
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      scrollToEnd: scrollToEnd == freezed
          ? _value.scrollToEnd
          : scrollToEnd // ignore: cast_nullable_to_non_nullable
              as bool,
      clearText: clearText == freezed
          ? _value.clearText
          : clearText // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadFileErrorOrSuccess: uploadFileErrorOrSuccess == freezed
          ? _value.uploadFileErrorOrSuccess
          : uploadFileErrorOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ChatFailure, String>?,
      uploadingFile: uploadingFile == freezed
          ? _value.uploadingFile
          : uploadingFile // ignore: cast_nullable_to_non_nullable
              as bool,
      nextAudioToPlay: nextAudioToPlay == freezed
          ? _value.nextAudioToPlay
          : nextAudioToPlay // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      playingAudio: playingAudio == freezed
          ? _value.playingAudio
          : playingAudio // ignore: cast_nullable_to_non_nullable
              as String?,
      doTheThing: doTheThing == freezed
          ? _value.doTheThing
          : doTheThing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.messages,
      required this.currentChat,
      required this.currentUser,
      required this.otherUser,
      required this.openImagePicker,
      required this.openFilePicker,
      required this.openLocationPicker,
      required this.imageSelected,
      required this.fileSelected,
      required this.locationSelected,
      required this.scrollToEnd,
      required this.clearText,
      required this.uploadFileErrorOrSuccess,
      required this.uploadingFile,
      required this.nextAudioToPlay,
      required this.playingAudio,
      required this.doTheThing});

  @override
  final List<ChatMessage> messages;
  @override
  final Chat? currentChat;
  @override
  final User? currentUser;
  @override
  final User? otherUser;
  @override
  final bool openImagePicker;
  @override
  final bool openFilePicker;
  @override
  final bool openLocationPicker;
  @override
  final String? imageSelected;
  @override
  final String? fileSelected;
  @override
  final String? locationSelected;
  @override
  final bool scrollToEnd;
  @override
  final bool clearText;
  @override
  final Either<ChatFailure, String>? uploadFileErrorOrSuccess;
  @override
  final bool uploadingFile;
  @override
  final ChatMessage? nextAudioToPlay;
  @override
  final String? playingAudio;
  @override
  final bool doTheThing;

  @override
  String toString() {
    return 'ChatState(messages: $messages, currentChat: $currentChat, currentUser: $currentUser, otherUser: $otherUser, openImagePicker: $openImagePicker, openFilePicker: $openFilePicker, openLocationPicker: $openLocationPicker, imageSelected: $imageSelected, fileSelected: $fileSelected, locationSelected: $locationSelected, scrollToEnd: $scrollToEnd, clearText: $clearText, uploadFileErrorOrSuccess: $uploadFileErrorOrSuccess, uploadingFile: $uploadingFile, nextAudioToPlay: $nextAudioToPlay, playingAudio: $playingAudio, doTheThing: $doTheThing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.currentChat, currentChat) ||
                const DeepCollectionEquality()
                    .equals(other.currentChat, currentChat)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)) &&
            (identical(other.openImagePicker, openImagePicker) ||
                const DeepCollectionEquality()
                    .equals(other.openImagePicker, openImagePicker)) &&
            (identical(other.openFilePicker, openFilePicker) ||
                const DeepCollectionEquality()
                    .equals(other.openFilePicker, openFilePicker)) &&
            (identical(other.openLocationPicker, openLocationPicker) ||
                const DeepCollectionEquality()
                    .equals(other.openLocationPicker, openLocationPicker)) &&
            (identical(other.imageSelected, imageSelected) ||
                const DeepCollectionEquality()
                    .equals(other.imageSelected, imageSelected)) &&
            (identical(other.fileSelected, fileSelected) ||
                const DeepCollectionEquality()
                    .equals(other.fileSelected, fileSelected)) &&
            (identical(other.locationSelected, locationSelected) ||
                const DeepCollectionEquality()
                    .equals(other.locationSelected, locationSelected)) &&
            (identical(other.scrollToEnd, scrollToEnd) ||
                const DeepCollectionEquality()
                    .equals(other.scrollToEnd, scrollToEnd)) &&
            (identical(other.clearText, clearText) ||
                const DeepCollectionEquality()
                    .equals(other.clearText, clearText)) &&
            (identical(
                    other.uploadFileErrorOrSuccess, uploadFileErrorOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.uploadFileErrorOrSuccess,
                    uploadFileErrorOrSuccess)) &&
            (identical(other.uploadingFile, uploadingFile) ||
                const DeepCollectionEquality()
                    .equals(other.uploadingFile, uploadingFile)) &&
            (identical(other.nextAudioToPlay, nextAudioToPlay) ||
                const DeepCollectionEquality()
                    .equals(other.nextAudioToPlay, nextAudioToPlay)) &&
            (identical(other.playingAudio, playingAudio) ||
                const DeepCollectionEquality()
                    .equals(other.playingAudio, playingAudio)) &&
            (identical(other.doTheThing, doTheThing) ||
                const DeepCollectionEquality()
                    .equals(other.doTheThing, doTheThing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(currentChat) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(otherUser) ^
      const DeepCollectionEquality().hash(openImagePicker) ^
      const DeepCollectionEquality().hash(openFilePicker) ^
      const DeepCollectionEquality().hash(openLocationPicker) ^
      const DeepCollectionEquality().hash(imageSelected) ^
      const DeepCollectionEquality().hash(fileSelected) ^
      const DeepCollectionEquality().hash(locationSelected) ^
      const DeepCollectionEquality().hash(scrollToEnd) ^
      const DeepCollectionEquality().hash(clearText) ^
      const DeepCollectionEquality().hash(uploadFileErrorOrSuccess) ^
      const DeepCollectionEquality().hash(uploadingFile) ^
      const DeepCollectionEquality().hash(nextAudioToPlay) ^
      const DeepCollectionEquality().hash(playingAudio) ^
      const DeepCollectionEquality().hash(doTheThing);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<ChatMessage> messages,
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
      required bool doTheThing}) = _$_ChatState;

  @override
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @override
  Chat? get currentChat => throw _privateConstructorUsedError;
  @override
  User? get currentUser => throw _privateConstructorUsedError;
  @override
  User? get otherUser => throw _privateConstructorUsedError;
  @override
  bool get openImagePicker => throw _privateConstructorUsedError;
  @override
  bool get openFilePicker => throw _privateConstructorUsedError;
  @override
  bool get openLocationPicker => throw _privateConstructorUsedError;
  @override
  String? get imageSelected => throw _privateConstructorUsedError;
  @override
  String? get fileSelected => throw _privateConstructorUsedError;
  @override
  String? get locationSelected => throw _privateConstructorUsedError;
  @override
  bool get scrollToEnd => throw _privateConstructorUsedError;
  @override
  bool get clearText => throw _privateConstructorUsedError;
  @override
  Either<ChatFailure, String>? get uploadFileErrorOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  bool get uploadingFile => throw _privateConstructorUsedError;
  @override
  ChatMessage? get nextAudioToPlay => throw _privateConstructorUsedError;
  @override
  String? get playingAudio => throw _privateConstructorUsedError;
  @override
  bool get doTheThing => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
