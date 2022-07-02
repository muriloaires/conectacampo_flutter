// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  Started started(
      Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay) {
    return Started(
      chat,
      message,
      nextAudioToPlay,
    );
  }

  OnBtnDownloadTap onBtnDownloadTap() {
    return const OnBtnDownloadTap();
  }

  OnBtnOpenFileTap onBtnOpenFileTap() {
    return const OnBtnOpenFileTap();
  }

  OnBtnPlayTapped onBtnPlayTapped() {
    return const OnBtnPlayTapped();
  }

  OnAudioFinished onAudioFinished({required bool isFromLoggedUser}) {
    return OnAudioFinished(
      isFromLoggedUser: isFromLoggedUser,
    );
  }
}

/// @nodoc
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
  $Res call({Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay});

  $ChatCopyWith<$Res> get chat;
  $ChatMessageCopyWith<$Res> get message;
  $ChatMessageCopyWith<$Res>? get nextAudioToPlay;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;

  @override
  $Res call({
    Object? chat = freezed,
    Object? message = freezed,
    Object? nextAudioToPlay = freezed,
  }) {
    return _then(Started(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage,
      nextAudioToPlay == freezed
          ? _value.nextAudioToPlay
          : nextAudioToPlay // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  @override
  $ChatMessageCopyWith<$Res> get message {
    return $ChatMessageCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
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

class _$Started implements Started {
  const _$Started(this.chat, this.message, this.nextAudioToPlay);

  @override
  final Chat chat;
  @override
  final ChatMessage message;
  @override
  final ChatMessage? nextAudioToPlay;

  @override
  String toString() {
    return 'MessageEvent.started(chat: $chat, message: $message, nextAudioToPlay: $nextAudioToPlay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Started &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.nextAudioToPlay, nextAudioToPlay) ||
                const DeepCollectionEquality()
                    .equals(other.nextAudioToPlay, nextAudioToPlay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(nextAudioToPlay);

  @JsonKey(ignore: true)
  @override
  $StartedCopyWith<Started> get copyWith =>
      _$StartedCopyWithImpl<Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) {
    return started(chat, message, nextAudioToPlay);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chat, message, nextAudioToPlay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements MessageEvent {
  const factory Started(
      Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay) = _$Started;

  Chat get chat => throw _privateConstructorUsedError;
  ChatMessage get message => throw _privateConstructorUsedError;
  ChatMessage? get nextAudioToPlay => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartedCopyWith<Started> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnDownloadTapCopyWith<$Res> {
  factory $OnBtnDownloadTapCopyWith(
          OnBtnDownloadTap value, $Res Function(OnBtnDownloadTap) then) =
      _$OnBtnDownloadTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnDownloadTapCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $OnBtnDownloadTapCopyWith<$Res> {
  _$OnBtnDownloadTapCopyWithImpl(
      OnBtnDownloadTap _value, $Res Function(OnBtnDownloadTap) _then)
      : super(_value, (v) => _then(v as OnBtnDownloadTap));

  @override
  OnBtnDownloadTap get _value => super._value as OnBtnDownloadTap;
}

/// @nodoc

class _$OnBtnDownloadTap implements OnBtnDownloadTap {
  const _$OnBtnDownloadTap();

  @override
  String toString() {
    return 'MessageEvent.onBtnDownloadTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnDownloadTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) {
    return onBtnDownloadTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnDownloadTap != null) {
      return onBtnDownloadTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnDownloadTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnDownloadTap != null) {
      return onBtnDownloadTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnDownloadTap implements MessageEvent {
  const factory OnBtnDownloadTap() = _$OnBtnDownloadTap;
}

/// @nodoc
abstract class $OnBtnOpenFileTapCopyWith<$Res> {
  factory $OnBtnOpenFileTapCopyWith(
          OnBtnOpenFileTap value, $Res Function(OnBtnOpenFileTap) then) =
      _$OnBtnOpenFileTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnOpenFileTapCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $OnBtnOpenFileTapCopyWith<$Res> {
  _$OnBtnOpenFileTapCopyWithImpl(
      OnBtnOpenFileTap _value, $Res Function(OnBtnOpenFileTap) _then)
      : super(_value, (v) => _then(v as OnBtnOpenFileTap));

  @override
  OnBtnOpenFileTap get _value => super._value as OnBtnOpenFileTap;
}

/// @nodoc

class _$OnBtnOpenFileTap implements OnBtnOpenFileTap {
  const _$OnBtnOpenFileTap();

  @override
  String toString() {
    return 'MessageEvent.onBtnOpenFileTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnOpenFileTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) {
    return onBtnOpenFileTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnOpenFileTap != null) {
      return onBtnOpenFileTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnOpenFileTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnOpenFileTap != null) {
      return onBtnOpenFileTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnOpenFileTap implements MessageEvent {
  const factory OnBtnOpenFileTap() = _$OnBtnOpenFileTap;
}

/// @nodoc
abstract class $OnBtnPlayTappedCopyWith<$Res> {
  factory $OnBtnPlayTappedCopyWith(
          OnBtnPlayTapped value, $Res Function(OnBtnPlayTapped) then) =
      _$OnBtnPlayTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnPlayTappedCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $OnBtnPlayTappedCopyWith<$Res> {
  _$OnBtnPlayTappedCopyWithImpl(
      OnBtnPlayTapped _value, $Res Function(OnBtnPlayTapped) _then)
      : super(_value, (v) => _then(v as OnBtnPlayTapped));

  @override
  OnBtnPlayTapped get _value => super._value as OnBtnPlayTapped;
}

/// @nodoc

class _$OnBtnPlayTapped implements OnBtnPlayTapped {
  const _$OnBtnPlayTapped();

  @override
  String toString() {
    return 'MessageEvent.onBtnPlayTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnPlayTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) {
    return onBtnPlayTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnPlayTapped != null) {
      return onBtnPlayTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onBtnPlayTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onBtnPlayTapped != null) {
      return onBtnPlayTapped(this);
    }
    return orElse();
  }
}

abstract class OnBtnPlayTapped implements MessageEvent {
  const factory OnBtnPlayTapped() = _$OnBtnPlayTapped;
}

/// @nodoc
abstract class $OnAudioFinishedCopyWith<$Res> {
  factory $OnAudioFinishedCopyWith(
          OnAudioFinished value, $Res Function(OnAudioFinished) then) =
      _$OnAudioFinishedCopyWithImpl<$Res>;
  $Res call({bool isFromLoggedUser});
}

/// @nodoc
class _$OnAudioFinishedCopyWithImpl<$Res>
    extends _$MessageEventCopyWithImpl<$Res>
    implements $OnAudioFinishedCopyWith<$Res> {
  _$OnAudioFinishedCopyWithImpl(
      OnAudioFinished _value, $Res Function(OnAudioFinished) _then)
      : super(_value, (v) => _then(v as OnAudioFinished));

  @override
  OnAudioFinished get _value => super._value as OnAudioFinished;

  @override
  $Res call({
    Object? isFromLoggedUser = freezed,
  }) {
    return _then(OnAudioFinished(
      isFromLoggedUser: isFromLoggedUser == freezed
          ? _value.isFromLoggedUser
          : isFromLoggedUser // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnAudioFinished implements OnAudioFinished {
  const _$OnAudioFinished({required this.isFromLoggedUser});

  @override
  final bool isFromLoggedUser;

  @override
  String toString() {
    return 'MessageEvent.onAudioFinished(isFromLoggedUser: $isFromLoggedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAudioFinished &&
            (identical(other.isFromLoggedUser, isFromLoggedUser) ||
                const DeepCollectionEquality()
                    .equals(other.isFromLoggedUser, isFromLoggedUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isFromLoggedUser);

  @JsonKey(ignore: true)
  @override
  $OnAudioFinishedCopyWith<OnAudioFinished> get copyWith =>
      _$OnAudioFinishedCopyWithImpl<OnAudioFinished>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)
        started,
    required TResult Function() onBtnDownloadTap,
    required TResult Function() onBtnOpenFileTap,
    required TResult Function() onBtnPlayTapped,
    required TResult Function(bool isFromLoggedUser) onAudioFinished,
  }) {
    return onAudioFinished(isFromLoggedUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Chat chat, ChatMessage message, ChatMessage? nextAudioToPlay)?
        started,
    TResult Function()? onBtnDownloadTap,
    TResult Function()? onBtnOpenFileTap,
    TResult Function()? onBtnPlayTapped,
    TResult Function(bool isFromLoggedUser)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioFinished != null) {
      return onAudioFinished(isFromLoggedUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnBtnDownloadTap value) onBtnDownloadTap,
    required TResult Function(OnBtnOpenFileTap value) onBtnOpenFileTap,
    required TResult Function(OnBtnPlayTapped value) onBtnPlayTapped,
    required TResult Function(OnAudioFinished value) onAudioFinished,
  }) {
    return onAudioFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnBtnDownloadTap value)? onBtnDownloadTap,
    TResult Function(OnBtnOpenFileTap value)? onBtnOpenFileTap,
    TResult Function(OnBtnPlayTapped value)? onBtnPlayTapped,
    TResult Function(OnAudioFinished value)? onAudioFinished,
    required TResult orElse(),
  }) {
    if (onAudioFinished != null) {
      return onAudioFinished(this);
    }
    return orElse();
  }
}

abstract class OnAudioFinished implements MessageEvent {
  const factory OnAudioFinished({required bool isFromLoggedUser}) =
      _$OnAudioFinished;

  bool get isFromLoggedUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnAudioFinishedCopyWith<OnAudioFinished> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$MessageStateTearOff {
  const _$MessageStateTearOff();

  _MessageState call(
      {required Chat? chat,
      required ChatMessage? message,
      required bool isFileDownloaded,
      required int audioDuration,
      required bool isAutoPlay}) {
    return _MessageState(
      chat: chat,
      message: message,
      isFileDownloaded: isFileDownloaded,
      audioDuration: audioDuration,
      isAutoPlay: isAutoPlay,
    );
  }
}

/// @nodoc
const $MessageState = _$MessageStateTearOff();

/// @nodoc
mixin _$MessageState {
  Chat? get chat => throw _privateConstructorUsedError;
  ChatMessage? get message => throw _privateConstructorUsedError;
  bool get isFileDownloaded => throw _privateConstructorUsedError;
  int get audioDuration => throw _privateConstructorUsedError;
  bool get isAutoPlay => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageStateCopyWith<MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageStateCopyWith<$Res> {
  factory $MessageStateCopyWith(
          MessageState value, $Res Function(MessageState) then) =
      _$MessageStateCopyWithImpl<$Res>;
  $Res call(
      {Chat? chat,
      ChatMessage? message,
      bool isFileDownloaded,
      int audioDuration,
      bool isAutoPlay});

  $ChatCopyWith<$Res>? get chat;
  $ChatMessageCopyWith<$Res>? get message;
}

/// @nodoc
class _$MessageStateCopyWithImpl<$Res> implements $MessageStateCopyWith<$Res> {
  _$MessageStateCopyWithImpl(this._value, this._then);

  final MessageState _value;
  // ignore: unused_field
  final $Res Function(MessageState) _then;

  @override
  $Res call({
    Object? chat = freezed,
    Object? message = freezed,
    Object? isFileDownloaded = freezed,
    Object? audioDuration = freezed,
    Object? isAutoPlay = freezed,
  }) {
    return _then(_value.copyWith(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      isFileDownloaded: isFileDownloaded == freezed
          ? _value.isFileDownloaded
          : isFileDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      audioDuration: audioDuration == freezed
          ? _value.audioDuration
          : audioDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoPlay: isAutoPlay == freezed
          ? _value.isAutoPlay
          : isAutoPlay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ChatCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  @override
  $ChatMessageCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $ChatMessageCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$MessageStateCopyWith<$Res>
    implements $MessageStateCopyWith<$Res> {
  factory _$MessageStateCopyWith(
          _MessageState value, $Res Function(_MessageState) then) =
      __$MessageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Chat? chat,
      ChatMessage? message,
      bool isFileDownloaded,
      int audioDuration,
      bool isAutoPlay});

  @override
  $ChatCopyWith<$Res>? get chat;
  @override
  $ChatMessageCopyWith<$Res>? get message;
}

/// @nodoc
class __$MessageStateCopyWithImpl<$Res> extends _$MessageStateCopyWithImpl<$Res>
    implements _$MessageStateCopyWith<$Res> {
  __$MessageStateCopyWithImpl(
      _MessageState _value, $Res Function(_MessageState) _then)
      : super(_value, (v) => _then(v as _MessageState));

  @override
  _MessageState get _value => super._value as _MessageState;

  @override
  $Res call({
    Object? chat = freezed,
    Object? message = freezed,
    Object? isFileDownloaded = freezed,
    Object? audioDuration = freezed,
    Object? isAutoPlay = freezed,
  }) {
    return _then(_MessageState(
      chat: chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
      isFileDownloaded: isFileDownloaded == freezed
          ? _value.isFileDownloaded
          : isFileDownloaded // ignore: cast_nullable_to_non_nullable
              as bool,
      audioDuration: audioDuration == freezed
          ? _value.audioDuration
          : audioDuration // ignore: cast_nullable_to_non_nullable
              as int,
      isAutoPlay: isAutoPlay == freezed
          ? _value.isAutoPlay
          : isAutoPlay // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_MessageState implements _MessageState {
  const _$_MessageState(
      {required this.chat,
      required this.message,
      required this.isFileDownloaded,
      required this.audioDuration,
      required this.isAutoPlay});

  @override
  final Chat? chat;
  @override
  final ChatMessage? message;
  @override
  final bool isFileDownloaded;
  @override
  final int audioDuration;
  @override
  final bool isAutoPlay;

  @override
  String toString() {
    return 'MessageState(chat: $chat, message: $message, isFileDownloaded: $isFileDownloaded, audioDuration: $audioDuration, isAutoPlay: $isAutoPlay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageState &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.isFileDownloaded, isFileDownloaded) ||
                const DeepCollectionEquality()
                    .equals(other.isFileDownloaded, isFileDownloaded)) &&
            (identical(other.audioDuration, audioDuration) ||
                const DeepCollectionEquality()
                    .equals(other.audioDuration, audioDuration)) &&
            (identical(other.isAutoPlay, isAutoPlay) ||
                const DeepCollectionEquality()
                    .equals(other.isAutoPlay, isAutoPlay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(isFileDownloaded) ^
      const DeepCollectionEquality().hash(audioDuration) ^
      const DeepCollectionEquality().hash(isAutoPlay);

  @JsonKey(ignore: true)
  @override
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      __$MessageStateCopyWithImpl<_MessageState>(this, _$identity);
}

abstract class _MessageState implements MessageState {
  const factory _MessageState(
      {required Chat? chat,
      required ChatMessage? message,
      required bool isFileDownloaded,
      required int audioDuration,
      required bool isAutoPlay}) = _$_MessageState;

  @override
  Chat? get chat => throw _privateConstructorUsedError;
  @override
  ChatMessage? get message => throw _privateConstructorUsedError;
  @override
  bool get isFileDownloaded => throw _privateConstructorUsedError;
  @override
  int get audioDuration => throw _privateConstructorUsedError;
  @override
  bool get isAutoPlay => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageStateCopyWith<_MessageState> get copyWith =>
      throw _privateConstructorUsedError;
}
