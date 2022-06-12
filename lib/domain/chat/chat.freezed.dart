// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chat _$ChatFromJson(Map<String, dynamic> json) {
  return _Chat.fromJson(json);
}

/// @nodoc
class _$ChatTearOff {
  const _$ChatTearOff();

  _Chat call(
      {required String? id,
      required List<User> users,
      @ServerTimestampConverter() required DateTime? createdAt}) {
    return _Chat(
      id: id,
      users: users,
      createdAt: createdAt,
    );
  }

  Chat fromJson(Map<String, Object> json) {
    return Chat.fromJson(json);
  }
}

/// @nodoc
const $Chat = _$ChatTearOff();

/// @nodoc
mixin _$Chat {
  String? get id => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatCopyWith<Chat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatCopyWith<$Res> {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) then) =
      _$ChatCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      List<User> users,
      @ServerTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$ChatCopyWithImpl<$Res> implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._value, this._then);

  final Chat _value;
  // ignore: unused_field
  final $Res Function(Chat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) then) =
      __$ChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      List<User> users,
      @ServerTimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$ChatCopyWithImpl<$Res> extends _$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(_Chat _value, $Res Function(_Chat) _then)
      : super(_value, (v) => _then(v as _Chat));

  @override
  _Chat get _value => super._value as _Chat;

  @override
  $Res call({
    Object? id = freezed,
    Object? users = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Chat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Chat implements _Chat {
  const _$_Chat(
      {required this.id,
      required this.users,
      @ServerTimestampConverter() required this.createdAt});

  factory _$_Chat.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatFromJson(json);

  @override
  final String? id;
  @override
  final List<User> users;
  @override
  @ServerTimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'Chat(id: $id, users: $users, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Chat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(users) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ChatCopyWith<_Chat> get copyWith =>
      __$ChatCopyWithImpl<_Chat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatToJson(this);
  }
}

abstract class _Chat implements Chat {
  const factory _Chat(
      {required String? id,
      required List<User> users,
      @ServerTimestampConverter() required DateTime? createdAt}) = _$_Chat;

  factory _Chat.fromJson(Map<String, dynamic> json) = _$_Chat.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  List<User> get users => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatCopyWith<_Chat> get copyWith => throw _privateConstructorUsedError;
}

UserChat _$UserChatFromJson(Map<String, dynamic> json) {
  return _UserChat.fromJson(json);
}

/// @nodoc
class _$UserChatTearOff {
  const _$UserChatTearOff();

  _UserChat call(
      {required String? id,
      required User otherUser,
      required String chatId,
      @ServerTimestampConverter() required DateTime? createdAt,
      @ServerTimestampConverter() required DateTime? updatedAt,
      required ChatMessage? lastMessage}) {
    return _UserChat(
      id: id,
      otherUser: otherUser,
      chatId: chatId,
      createdAt: createdAt,
      updatedAt: updatedAt,
      lastMessage: lastMessage,
    );
  }

  UserChat fromJson(Map<String, Object> json) {
    return UserChat.fromJson(json);
  }
}

/// @nodoc
const $UserChat = _$UserChatTearOff();

/// @nodoc
mixin _$UserChat {
  String? get id => throw _privateConstructorUsedError;
  User get otherUser => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  ChatMessage? get lastMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserChatCopyWith<UserChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserChatCopyWith<$Res> {
  factory $UserChatCopyWith(UserChat value, $Res Function(UserChat) then) =
      _$UserChatCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      User otherUser,
      String chatId,
      @ServerTimestampConverter() DateTime? createdAt,
      @ServerTimestampConverter() DateTime? updatedAt,
      ChatMessage? lastMessage});

  $UserCopyWith<$Res> get otherUser;
  $ChatMessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$UserChatCopyWithImpl<$Res> implements $UserChatCopyWith<$Res> {
  _$UserChatCopyWithImpl(this._value, this._then);

  final UserChat _value;
  // ignore: unused_field
  final $Res Function(UserChat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? otherUser = freezed,
    Object? chatId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
    ));
  }

  @override
  $UserCopyWith<$Res> get otherUser {
    return $UserCopyWith<$Res>(_value.otherUser, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }

  @override
  $ChatMessageCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $ChatMessageCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value));
    });
  }
}

/// @nodoc
abstract class _$UserChatCopyWith<$Res> implements $UserChatCopyWith<$Res> {
  factory _$UserChatCopyWith(_UserChat value, $Res Function(_UserChat) then) =
      __$UserChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      User otherUser,
      String chatId,
      @ServerTimestampConverter() DateTime? createdAt,
      @ServerTimestampConverter() DateTime? updatedAt,
      ChatMessage? lastMessage});

  @override
  $UserCopyWith<$Res> get otherUser;
  @override
  $ChatMessageCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$UserChatCopyWithImpl<$Res> extends _$UserChatCopyWithImpl<$Res>
    implements _$UserChatCopyWith<$Res> {
  __$UserChatCopyWithImpl(_UserChat _value, $Res Function(_UserChat) _then)
      : super(_value, (v) => _then(v as _UserChat));

  @override
  _UserChat get _value => super._value as _UserChat;

  @override
  $Res call({
    Object? id = freezed,
    Object? otherUser = freezed,
    Object? chatId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? lastMessage = freezed,
  }) {
    return _then(_UserChat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as ChatMessage?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_UserChat implements _UserChat {
  const _$_UserChat(
      {required this.id,
      required this.otherUser,
      required this.chatId,
      @ServerTimestampConverter() required this.createdAt,
      @ServerTimestampConverter() required this.updatedAt,
      required this.lastMessage});

  factory _$_UserChat.fromJson(Map<String, dynamic> json) =>
      _$_$_UserChatFromJson(json);

  @override
  final String? id;
  @override
  final User otherUser;
  @override
  final String chatId;
  @override
  @ServerTimestampConverter()
  final DateTime? createdAt;
  @override
  @ServerTimestampConverter()
  final DateTime? updatedAt;
  @override
  final ChatMessage? lastMessage;

  @override
  String toString() {
    return 'UserChat(id: $id, otherUser: $otherUser, chatId: $chatId, createdAt: $createdAt, updatedAt: $updatedAt, lastMessage: $lastMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserChat &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)) &&
            (identical(other.chatId, chatId) ||
                const DeepCollectionEquality().equals(other.chatId, chatId)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(otherUser) ^
      const DeepCollectionEquality().hash(chatId) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(lastMessage);

  @JsonKey(ignore: true)
  @override
  _$UserChatCopyWith<_UserChat> get copyWith =>
      __$UserChatCopyWithImpl<_UserChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserChatToJson(this);
  }
}

abstract class _UserChat implements UserChat {
  const factory _UserChat(
      {required String? id,
      required User otherUser,
      required String chatId,
      @ServerTimestampConverter() required DateTime? createdAt,
      @ServerTimestampConverter() required DateTime? updatedAt,
      required ChatMessage? lastMessage}) = _$_UserChat;

  factory _UserChat.fromJson(Map<String, dynamic> json) = _$_UserChat.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  User get otherUser => throw _privateConstructorUsedError;
  @override
  String get chatId => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @override
  ChatMessage? get lastMessage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserChatCopyWith<_UserChat> get copyWith =>
      throw _privateConstructorUsedError;
}
