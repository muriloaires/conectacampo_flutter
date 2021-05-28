// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

// ignore: unused_element
  _User call(
      {@required UniqueId id,
      @required FullName name,
      @required Nickname nickname,
      @required PhoneNumber phoneNumber,
      @required ThumbAvatar thumbAvatar,
      @required MediumAvatar mediumAvatar,
      @required OriginalAvatar originalAvatar}) {
    return _User(
      id: id,
      name: name,
      nickname: nickname,
      phoneNumber: phoneNumber,
      thumbAvatar: thumbAvatar,
      mediumAvatar: mediumAvatar,
      originalAvatar: originalAvatar,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  UniqueId get id;
  FullName get name;
  Nickname get nickname;
  PhoneNumber get phoneNumber;
  ThumbAvatar get thumbAvatar;
  MediumAvatar get mediumAvatar;
  OriginalAvatar get originalAvatar;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      FullName name,
      Nickname nickname,
      PhoneNumber phoneNumber,
      ThumbAvatar thumbAvatar,
      MediumAvatar mediumAvatar,
      OriginalAvatar originalAvatar});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
    Object thumbAvatar = freezed,
    Object mediumAvatar = freezed,
    Object originalAvatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as FullName,
      nickname: nickname == freezed ? _value.nickname : nickname as Nickname,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      thumbAvatar: thumbAvatar == freezed
          ? _value.thumbAvatar
          : thumbAvatar as ThumbAvatar,
      mediumAvatar: mediumAvatar == freezed
          ? _value.mediumAvatar
          : mediumAvatar as MediumAvatar,
      originalAvatar: originalAvatar == freezed
          ? _value.originalAvatar
          : originalAvatar as OriginalAvatar,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      FullName name,
      Nickname nickname,
      PhoneNumber phoneNumber,
      ThumbAvatar thumbAvatar,
      MediumAvatar mediumAvatar,
      OriginalAvatar originalAvatar});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
    Object thumbAvatar = freezed,
    Object mediumAvatar = freezed,
    Object originalAvatar = freezed,
  }) {
    return _then(_User(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as FullName,
      nickname: nickname == freezed ? _value.nickname : nickname as Nickname,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as PhoneNumber,
      thumbAvatar: thumbAvatar == freezed
          ? _value.thumbAvatar
          : thumbAvatar as ThumbAvatar,
      mediumAvatar: mediumAvatar == freezed
          ? _value.mediumAvatar
          : mediumAvatar as MediumAvatar,
      originalAvatar: originalAvatar == freezed
          ? _value.originalAvatar
          : originalAvatar as OriginalAvatar,
    ));
  }
}

/// @nodoc
class _$_User implements _User {
  const _$_User(
      {@required this.id,
      @required this.name,
      @required this.nickname,
      @required this.phoneNumber,
      @required this.thumbAvatar,
      @required this.mediumAvatar,
      @required this.originalAvatar})
      : assert(id != null),
        assert(name != null),
        assert(nickname != null),
        assert(phoneNumber != null),
        assert(thumbAvatar != null),
        assert(mediumAvatar != null),
        assert(originalAvatar != null);

  @override
  final UniqueId id;
  @override
  final FullName name;
  @override
  final Nickname nickname;
  @override
  final PhoneNumber phoneNumber;
  @override
  final ThumbAvatar thumbAvatar;
  @override
  final MediumAvatar mediumAvatar;
  @override
  final OriginalAvatar originalAvatar;

  @override
  String toString() {
    return 'User(id: $id, name: $name, nickname: $nickname, phoneNumber: $phoneNumber, thumbAvatar: $thumbAvatar, mediumAvatar: $mediumAvatar, originalAvatar: $originalAvatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.thumbAvatar, thumbAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.thumbAvatar, thumbAvatar)) &&
            (identical(other.mediumAvatar, mediumAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.mediumAvatar, mediumAvatar)) &&
            (identical(other.originalAvatar, originalAvatar) ||
                const DeepCollectionEquality()
                    .equals(other.originalAvatar, originalAvatar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(thumbAvatar) ^
      const DeepCollectionEquality().hash(mediumAvatar) ^
      const DeepCollectionEquality().hash(originalAvatar);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {@required UniqueId id,
      @required FullName name,
      @required Nickname nickname,
      @required PhoneNumber phoneNumber,
      @required ThumbAvatar thumbAvatar,
      @required MediumAvatar mediumAvatar,
      @required OriginalAvatar originalAvatar}) = _$_User;

  @override
  UniqueId get id;
  @override
  FullName get name;
  @override
  Nickname get nickname;
  @override
  PhoneNumber get phoneNumber;
  @override
  ThumbAvatar get thumbAvatar;
  @override
  MediumAvatar get mediumAvatar;
  @override
  OriginalAvatar get originalAvatar;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith;
}
