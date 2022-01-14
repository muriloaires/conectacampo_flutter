// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationResponse _$NotificationResponseFromJson(Map<String, dynamic> json) {
  return _NotificationResponse.fromJson(json);
}

/// @nodoc
class _$NotificationResponseTearOff {
  const _$NotificationResponseTearOff();

  _NotificationResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'notificable') Notificatificable? notificatificable) {
    return _NotificationResponse(
      id,
      createdAt,
      title,
      message,
      kind,
      userId,
      notificatificable,
    );
  }

  NotificationResponse fromJson(Map<String, Object> json) {
    return NotificationResponse.fromJson(json);
  }
}

/// @nodoc
const $NotificationResponse = _$NotificationResponseTearOff();

/// @nodoc
mixin _$NotificationResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'notificable')
  Notificatificable? get notificatificable =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationResponseCopyWith<NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationResponseCopyWith<$Res> {
  factory $NotificationResponseCopyWith(NotificationResponse value,
          $Res Function(NotificationResponse) then) =
      _$NotificationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'notificable') Notificatificable? notificatificable});

  $NotificatificableCopyWith<$Res>? get notificatificable;
}

/// @nodoc
class _$NotificationResponseCopyWithImpl<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  _$NotificationResponseCopyWithImpl(this._value, this._then);

  final NotificationResponse _value;
  // ignore: unused_field
  final $Res Function(NotificationResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? kind = freezed,
    Object? userId = freezed,
    Object? notificatificable = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      notificatificable: notificatificable == freezed
          ? _value.notificatificable
          : notificatificable // ignore: cast_nullable_to_non_nullable
              as Notificatificable?,
    ));
  }

  @override
  $NotificatificableCopyWith<$Res>? get notificatificable {
    if (_value.notificatificable == null) {
      return null;
    }

    return $NotificatificableCopyWith<$Res>(_value.notificatificable!, (value) {
      return _then(_value.copyWith(notificatificable: value));
    });
  }
}

/// @nodoc
abstract class _$NotificationResponseCopyWith<$Res>
    implements $NotificationResponseCopyWith<$Res> {
  factory _$NotificationResponseCopyWith(_NotificationResponse value,
          $Res Function(_NotificationResponse) then) =
      __$NotificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'notificable') Notificatificable? notificatificable});

  @override
  $NotificatificableCopyWith<$Res>? get notificatificable;
}

/// @nodoc
class __$NotificationResponseCopyWithImpl<$Res>
    extends _$NotificationResponseCopyWithImpl<$Res>
    implements _$NotificationResponseCopyWith<$Res> {
  __$NotificationResponseCopyWithImpl(
      _NotificationResponse _value, $Res Function(_NotificationResponse) _then)
      : super(_value, (v) => _then(v as _NotificationResponse));

  @override
  _NotificationResponse get _value => super._value as _NotificationResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? kind = freezed,
    Object? userId = freezed,
    Object? notificatificable = freezed,
  }) {
    return _then(_NotificationResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      notificatificable == freezed
          ? _value.notificatificable
          : notificatificable // ignore: cast_nullable_to_non_nullable
              as Notificatificable?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationResponse implements _NotificationResponse {
  const _$_NotificationResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'message') this.message,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'notificable') this.notificatificable);

  factory _$_NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'notificable')
  final Notificatificable? notificatificable;

  @override
  String toString() {
    return 'NotificationResponse(id: $id, createdAt: $createdAt, title: $title, message: $message, kind: $kind, userId: $userId, notificatificable: $notificatificable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.notificatificable, notificatificable) ||
                const DeepCollectionEquality()
                    .equals(other.notificatificable, notificatificable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(notificatificable);

  @JsonKey(ignore: true)
  @override
  _$NotificationResponseCopyWith<_NotificationResponse> get copyWith =>
      __$NotificationResponseCopyWithImpl<_NotificationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationResponseToJson(this);
  }
}

abstract class _NotificationResponse implements NotificationResponse {
  const factory _NotificationResponse(
          @JsonKey(name: 'id') int id,
          @JsonKey(name: 'created_at') String createdAt,
          @JsonKey(name: 'title') String title,
          @JsonKey(name: 'message') String message,
          @JsonKey(name: 'kind') String kind,
          @JsonKey(name: 'user_id') int userId,
          @JsonKey(name: 'notificable') Notificatificable? notificatificable) =
      _$_NotificationResponse;

  factory _NotificationResponse.fromJson(Map<String, dynamic> json) =
      _$_NotificationResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'notificable')
  Notificatificable? get notificatificable =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationResponseCopyWith<_NotificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Notificatificable _$NotificatificableFromJson(Map<String, dynamic> json) {
  return _Notificatificable.fromJson(json);
}

/// @nodoc
class _$NotificatificableTearOff {
  const _$NotificatificableTearOff();

  _Notificatificable call(@JsonKey(name: 'id') int id) {
    return _Notificatificable(
      id,
    );
  }

  Notificatificable fromJson(Map<String, Object> json) {
    return Notificatificable.fromJson(json);
  }
}

/// @nodoc
const $Notificatificable = _$NotificatificableTearOff();

/// @nodoc
mixin _$Notificatificable {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificatificableCopyWith<Notificatificable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificatificableCopyWith<$Res> {
  factory $NotificatificableCopyWith(
          Notificatificable value, $Res Function(Notificatificable) then) =
      _$NotificatificableCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class _$NotificatificableCopyWithImpl<$Res>
    implements $NotificatificableCopyWith<$Res> {
  _$NotificatificableCopyWithImpl(this._value, this._then);

  final Notificatificable _value;
  // ignore: unused_field
  final $Res Function(Notificatificable) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$NotificatificableCopyWith<$Res>
    implements $NotificatificableCopyWith<$Res> {
  factory _$NotificatificableCopyWith(
          _Notificatificable value, $Res Function(_Notificatificable) then) =
      __$NotificatificableCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class __$NotificatificableCopyWithImpl<$Res>
    extends _$NotificatificableCopyWithImpl<$Res>
    implements _$NotificatificableCopyWith<$Res> {
  __$NotificatificableCopyWithImpl(
      _Notificatificable _value, $Res Function(_Notificatificable) _then)
      : super(_value, (v) => _then(v as _Notificatificable));

  @override
  _Notificatificable get _value => super._value as _Notificatificable;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Notificatificable(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notificatificable implements _Notificatificable {
  const _$_Notificatificable(@JsonKey(name: 'id') this.id);

  factory _$_Notificatificable.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificatificableFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;

  @override
  String toString() {
    return 'Notificatificable(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Notificatificable &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$NotificatificableCopyWith<_Notificatificable> get copyWith =>
      __$NotificatificableCopyWithImpl<_Notificatificable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificatificableToJson(this);
  }
}

abstract class _Notificatificable implements Notificatificable {
  const factory _Notificatificable(@JsonKey(name: 'id') int id) =
      _$_Notificatificable;

  factory _Notificatificable.fromJson(Map<String, dynamic> json) =
      _$_Notificatificable.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificatificableCopyWith<_Notificatificable> get copyWith =>
      throw _privateConstructorUsedError;
}
