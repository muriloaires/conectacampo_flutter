// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
class _$ChatMessageTearOff {
  const _$ChatMessageTearOff();

  _ChatMessage call(
      String? id,
      String content,
      String contentType,
      String? fileUrl,
      @ServerTimestampConverter() DateTime? sentAt,
      User sentBy,
      {required bool visualized,
      required bool? hasPendingWrites}) {
    return _ChatMessage(
      id,
      content,
      contentType,
      fileUrl,
      sentAt,
      sentBy,
      visualized: visualized,
      hasPendingWrites: hasPendingWrites,
    );
  }

  ChatMessage fromJson(Map<String, Object> json) {
    return ChatMessage.fromJson(json);
  }
}

/// @nodoc
const $ChatMessage = _$ChatMessageTearOff();

/// @nodoc
mixin _$ChatMessage {
  String? get id => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  String? get fileUrl => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime? get sentAt => throw _privateConstructorUsedError;
  User get sentBy => throw _privateConstructorUsedError;
  bool get visualized => throw _privateConstructorUsedError;
  bool? get hasPendingWrites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String content,
      String contentType,
      String? fileUrl,
      @ServerTimestampConverter() DateTime? sentAt,
      User sentBy,
      bool visualized,
      bool? hasPendingWrites});

  $UserCopyWith<$Res> get sentBy;
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? contentType = freezed,
    Object? fileUrl = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? visualized = freezed,
    Object? hasPendingWrites = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt: sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentBy: sentBy == freezed
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as User,
      visualized: visualized == freezed
          ? _value.visualized
          : visualized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPendingWrites: hasPendingWrites == freezed
          ? _value.hasPendingWrites
          : hasPendingWrites // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $UserCopyWith<$Res> get sentBy {
    return $UserCopyWith<$Res>(_value.sentBy, (value) {
      return _then(_value.copyWith(sentBy: value));
    });
  }
}

/// @nodoc
abstract class _$ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$ChatMessageCopyWith(
          _ChatMessage value, $Res Function(_ChatMessage) then) =
      __$ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String content,
      String contentType,
      String? fileUrl,
      @ServerTimestampConverter() DateTime? sentAt,
      User sentBy,
      bool visualized,
      bool? hasPendingWrites});

  @override
  $UserCopyWith<$Res> get sentBy;
}

/// @nodoc
class __$ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$ChatMessageCopyWith<$Res> {
  __$ChatMessageCopyWithImpl(
      _ChatMessage _value, $Res Function(_ChatMessage) _then)
      : super(_value, (v) => _then(v as _ChatMessage));

  @override
  _ChatMessage get _value => super._value as _ChatMessage;

  @override
  $Res call({
    Object? id = freezed,
    Object? content = freezed,
    Object? contentType = freezed,
    Object? fileUrl = freezed,
    Object? sentAt = freezed,
    Object? sentBy = freezed,
    Object? visualized = freezed,
    Object? hasPendingWrites = freezed,
  }) {
    return _then(_ChatMessage(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl == freezed
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sentAt == freezed
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentBy == freezed
          ? _value.sentBy
          : sentBy // ignore: cast_nullable_to_non_nullable
              as User,
      visualized: visualized == freezed
          ? _value.visualized
          : visualized // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPendingWrites: hasPendingWrites == freezed
          ? _value.hasPendingWrites
          : hasPendingWrites // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_ChatMessage extends _ChatMessage {
  const _$_ChatMessage(this.id, this.content, this.contentType, this.fileUrl,
      @ServerTimestampConverter() this.sentAt, this.sentBy,
      {required this.visualized, required this.hasPendingWrites})
      : super._();

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_ChatMessageFromJson(json);

  @override
  final String? id;
  @override
  final String content;
  @override
  final String contentType;
  @override
  final String? fileUrl;
  @override
  @ServerTimestampConverter()
  final DateTime? sentAt;
  @override
  final User sentBy;
  @override
  final bool visualized;
  @override
  final bool? hasPendingWrites;

  @override
  String toString() {
    return 'ChatMessage(id: $id, content: $content, contentType: $contentType, fileUrl: $fileUrl, sentAt: $sentAt, sentBy: $sentBy, visualized: $visualized, hasPendingWrites: $hasPendingWrites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatMessage &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.contentType, contentType) ||
                const DeepCollectionEquality()
                    .equals(other.contentType, contentType)) &&
            (identical(other.fileUrl, fileUrl) ||
                const DeepCollectionEquality()
                    .equals(other.fileUrl, fileUrl)) &&
            (identical(other.sentAt, sentAt) ||
                const DeepCollectionEquality().equals(other.sentAt, sentAt)) &&
            (identical(other.sentBy, sentBy) ||
                const DeepCollectionEquality().equals(other.sentBy, sentBy)) &&
            (identical(other.visualized, visualized) ||
                const DeepCollectionEquality()
                    .equals(other.visualized, visualized)) &&
            (identical(other.hasPendingWrites, hasPendingWrites) ||
                const DeepCollectionEquality()
                    .equals(other.hasPendingWrites, hasPendingWrites)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(contentType) ^
      const DeepCollectionEquality().hash(fileUrl) ^
      const DeepCollectionEquality().hash(sentAt) ^
      const DeepCollectionEquality().hash(sentBy) ^
      const DeepCollectionEquality().hash(visualized) ^
      const DeepCollectionEquality().hash(hasPendingWrites);

  @JsonKey(ignore: true)
  @override
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      __$ChatMessageCopyWithImpl<_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage extends ChatMessage {
  const factory _ChatMessage(
      String? id,
      String content,
      String contentType,
      String? fileUrl,
      @ServerTimestampConverter() DateTime? sentAt,
      User sentBy,
      {required bool visualized,
      required bool? hasPendingWrites}) = _$_ChatMessage;
  const _ChatMessage._() : super._();

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get contentType => throw _privateConstructorUsedError;
  @override
  String? get fileUrl => throw _privateConstructorUsedError;
  @override
  @ServerTimestampConverter()
  DateTime? get sentAt => throw _privateConstructorUsedError;
  @override
  User get sentBy => throw _privateConstructorUsedError;
  @override
  bool get visualized => throw _privateConstructorUsedError;
  @override
  bool? get hasPendingWrites => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatMessageCopyWith<_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
