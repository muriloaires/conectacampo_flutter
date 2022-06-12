// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatListEventTearOff {
  const _$ChatListEventTearOff();

  _Started started() {
    return const _Started();
  }

  OnChatTapped onChatTapped(UserChat chat) {
    return OnChatTapped(
      chat,
    );
  }

  OnChatOpen onChatOpen() {
    return const OnChatOpen();
  }
}

/// @nodoc
const $ChatListEvent = _$ChatListEventTearOff();

/// @nodoc
mixin _$ChatListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserChat chat) onChatTapped,
    required TResult Function() onChatOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserChat chat)? onChatTapped,
    TResult Function()? onChatOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnChatTapped value) onChatTapped,
    required TResult Function(OnChatOpen value) onChatOpen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnChatTapped value)? onChatTapped,
    TResult Function(OnChatOpen value)? onChatOpen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListEventCopyWith<$Res> {
  factory $ChatListEventCopyWith(
          ChatListEvent value, $Res Function(ChatListEvent) then) =
      _$ChatListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatListEventCopyWithImpl<$Res>
    implements $ChatListEventCopyWith<$Res> {
  _$ChatListEventCopyWithImpl(this._value, this._then);

  final ChatListEvent _value;
  // ignore: unused_field
  final $Res Function(ChatListEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatListEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ChatListEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserChat chat) onChatTapped,
    required TResult Function() onChatOpen,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserChat chat)? onChatTapped,
    TResult Function()? onChatOpen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnChatTapped value) onChatTapped,
    required TResult Function(OnChatOpen value) onChatOpen,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnChatTapped value)? onChatTapped,
    TResult Function(OnChatOpen value)? onChatOpen,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatListEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $OnChatTappedCopyWith<$Res> {
  factory $OnChatTappedCopyWith(
          OnChatTapped value, $Res Function(OnChatTapped) then) =
      _$OnChatTappedCopyWithImpl<$Res>;
  $Res call({UserChat chat});

  $UserChatCopyWith<$Res> get chat;
}

/// @nodoc
class _$OnChatTappedCopyWithImpl<$Res> extends _$ChatListEventCopyWithImpl<$Res>
    implements $OnChatTappedCopyWith<$Res> {
  _$OnChatTappedCopyWithImpl(
      OnChatTapped _value, $Res Function(OnChatTapped) _then)
      : super(_value, (v) => _then(v as OnChatTapped));

  @override
  OnChatTapped get _value => super._value as OnChatTapped;

  @override
  $Res call({
    Object? chat = freezed,
  }) {
    return _then(OnChatTapped(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as UserChat,
    ));
  }

  @override
  $UserChatCopyWith<$Res> get chat {
    return $UserChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }
}

/// @nodoc

class _$OnChatTapped implements OnChatTapped {
  const _$OnChatTapped(this.chat);

  @override
  final UserChat chat;

  @override
  String toString() {
    return 'ChatListEvent.onChatTapped(chat: $chat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnChatTapped &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(chat);

  @JsonKey(ignore: true)
  @override
  $OnChatTappedCopyWith<OnChatTapped> get copyWith =>
      _$OnChatTappedCopyWithImpl<OnChatTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserChat chat) onChatTapped,
    required TResult Function() onChatOpen,
  }) {
    return onChatTapped(chat);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserChat chat)? onChatTapped,
    TResult Function()? onChatOpen,
    required TResult orElse(),
  }) {
    if (onChatTapped != null) {
      return onChatTapped(chat);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnChatTapped value) onChatTapped,
    required TResult Function(OnChatOpen value) onChatOpen,
  }) {
    return onChatTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnChatTapped value)? onChatTapped,
    TResult Function(OnChatOpen value)? onChatOpen,
    required TResult orElse(),
  }) {
    if (onChatTapped != null) {
      return onChatTapped(this);
    }
    return orElse();
  }
}

abstract class OnChatTapped implements ChatListEvent {
  const factory OnChatTapped(UserChat chat) = _$OnChatTapped;

  UserChat get chat => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnChatTappedCopyWith<OnChatTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnChatOpenCopyWith<$Res> {
  factory $OnChatOpenCopyWith(
          OnChatOpen value, $Res Function(OnChatOpen) then) =
      _$OnChatOpenCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnChatOpenCopyWithImpl<$Res> extends _$ChatListEventCopyWithImpl<$Res>
    implements $OnChatOpenCopyWith<$Res> {
  _$OnChatOpenCopyWithImpl(OnChatOpen _value, $Res Function(OnChatOpen) _then)
      : super(_value, (v) => _then(v as OnChatOpen));

  @override
  OnChatOpen get _value => super._value as OnChatOpen;
}

/// @nodoc

class _$OnChatOpen implements OnChatOpen {
  const _$OnChatOpen();

  @override
  String toString() {
    return 'ChatListEvent.onChatOpen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnChatOpen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(UserChat chat) onChatTapped,
    required TResult Function() onChatOpen,
  }) {
    return onChatOpen();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(UserChat chat)? onChatTapped,
    TResult Function()? onChatOpen,
    required TResult orElse(),
  }) {
    if (onChatOpen != null) {
      return onChatOpen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnChatTapped value) onChatTapped,
    required TResult Function(OnChatOpen value) onChatOpen,
  }) {
    return onChatOpen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnChatTapped value)? onChatTapped,
    TResult Function(OnChatOpen value)? onChatOpen,
    required TResult orElse(),
  }) {
    if (onChatOpen != null) {
      return onChatOpen(this);
    }
    return orElse();
  }
}

abstract class OnChatOpen implements ChatListEvent {
  const factory OnChatOpen() = _$OnChatOpen;
}

/// @nodoc
class _$ChatListStateTearOff {
  const _$ChatListStateTearOff();

  _ChatListState call(
      {required User? loggedUser,
      required UserChat? userChatToOpen,
      required Chat? chatToOpen}) {
    return _ChatListState(
      loggedUser: loggedUser,
      userChatToOpen: userChatToOpen,
      chatToOpen: chatToOpen,
    );
  }
}

/// @nodoc
const $ChatListState = _$ChatListStateTearOff();

/// @nodoc
mixin _$ChatListState {
  User? get loggedUser => throw _privateConstructorUsedError;
  UserChat? get userChatToOpen => throw _privateConstructorUsedError;
  Chat? get chatToOpen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatListStateCopyWith<ChatListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatListStateCopyWith<$Res> {
  factory $ChatListStateCopyWith(
          ChatListState value, $Res Function(ChatListState) then) =
      _$ChatListStateCopyWithImpl<$Res>;
  $Res call({User? loggedUser, UserChat? userChatToOpen, Chat? chatToOpen});

  $UserCopyWith<$Res>? get loggedUser;
  $UserChatCopyWith<$Res>? get userChatToOpen;
  $ChatCopyWith<$Res>? get chatToOpen;
}

/// @nodoc
class _$ChatListStateCopyWithImpl<$Res>
    implements $ChatListStateCopyWith<$Res> {
  _$ChatListStateCopyWithImpl(this._value, this._then);

  final ChatListState _value;
  // ignore: unused_field
  final $Res Function(ChatListState) _then;

  @override
  $Res call({
    Object? loggedUser = freezed,
    Object? userChatToOpen = freezed,
    Object? chatToOpen = freezed,
  }) {
    return _then(_value.copyWith(
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      userChatToOpen: userChatToOpen == freezed
          ? _value.userChatToOpen
          : userChatToOpen // ignore: cast_nullable_to_non_nullable
              as UserChat?,
      chatToOpen: chatToOpen == freezed
          ? _value.chatToOpen
          : chatToOpen // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get loggedUser {
    if (_value.loggedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.loggedUser!, (value) {
      return _then(_value.copyWith(loggedUser: value));
    });
  }

  @override
  $UserChatCopyWith<$Res>? get userChatToOpen {
    if (_value.userChatToOpen == null) {
      return null;
    }

    return $UserChatCopyWith<$Res>(_value.userChatToOpen!, (value) {
      return _then(_value.copyWith(userChatToOpen: value));
    });
  }

  @override
  $ChatCopyWith<$Res>? get chatToOpen {
    if (_value.chatToOpen == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.chatToOpen!, (value) {
      return _then(_value.copyWith(chatToOpen: value));
    });
  }
}

/// @nodoc
abstract class _$ChatListStateCopyWith<$Res>
    implements $ChatListStateCopyWith<$Res> {
  factory _$ChatListStateCopyWith(
          _ChatListState value, $Res Function(_ChatListState) then) =
      __$ChatListStateCopyWithImpl<$Res>;
  @override
  $Res call({User? loggedUser, UserChat? userChatToOpen, Chat? chatToOpen});

  @override
  $UserCopyWith<$Res>? get loggedUser;
  @override
  $UserChatCopyWith<$Res>? get userChatToOpen;
  @override
  $ChatCopyWith<$Res>? get chatToOpen;
}

/// @nodoc
class __$ChatListStateCopyWithImpl<$Res>
    extends _$ChatListStateCopyWithImpl<$Res>
    implements _$ChatListStateCopyWith<$Res> {
  __$ChatListStateCopyWithImpl(
      _ChatListState _value, $Res Function(_ChatListState) _then)
      : super(_value, (v) => _then(v as _ChatListState));

  @override
  _ChatListState get _value => super._value as _ChatListState;

  @override
  $Res call({
    Object? loggedUser = freezed,
    Object? userChatToOpen = freezed,
    Object? chatToOpen = freezed,
  }) {
    return _then(_ChatListState(
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      userChatToOpen: userChatToOpen == freezed
          ? _value.userChatToOpen
          : userChatToOpen // ignore: cast_nullable_to_non_nullable
              as UserChat?,
      chatToOpen: chatToOpen == freezed
          ? _value.chatToOpen
          : chatToOpen // ignore: cast_nullable_to_non_nullable
              as Chat?,
    ));
  }
}

/// @nodoc

class _$_ChatListState implements _ChatListState {
  const _$_ChatListState(
      {required this.loggedUser,
      required this.userChatToOpen,
      required this.chatToOpen});

  @override
  final User? loggedUser;
  @override
  final UserChat? userChatToOpen;
  @override
  final Chat? chatToOpen;

  @override
  String toString() {
    return 'ChatListState(loggedUser: $loggedUser, userChatToOpen: $userChatToOpen, chatToOpen: $chatToOpen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatListState &&
            (identical(other.loggedUser, loggedUser) ||
                const DeepCollectionEquality()
                    .equals(other.loggedUser, loggedUser)) &&
            (identical(other.userChatToOpen, userChatToOpen) ||
                const DeepCollectionEquality()
                    .equals(other.userChatToOpen, userChatToOpen)) &&
            (identical(other.chatToOpen, chatToOpen) ||
                const DeepCollectionEquality()
                    .equals(other.chatToOpen, chatToOpen)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedUser) ^
      const DeepCollectionEquality().hash(userChatToOpen) ^
      const DeepCollectionEquality().hash(chatToOpen);

  @JsonKey(ignore: true)
  @override
  _$ChatListStateCopyWith<_ChatListState> get copyWith =>
      __$ChatListStateCopyWithImpl<_ChatListState>(this, _$identity);
}

abstract class _ChatListState implements ChatListState {
  const factory _ChatListState(
      {required User? loggedUser,
      required UserChat? userChatToOpen,
      required Chat? chatToOpen}) = _$_ChatListState;

  @override
  User? get loggedUser => throw _privateConstructorUsedError;
  @override
  UserChat? get userChatToOpen => throw _privateConstructorUsedError;
  @override
  Chat? get chatToOpen => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatListStateCopyWith<_ChatListState> get copyWith =>
      throw _privateConstructorUsedError;
}
