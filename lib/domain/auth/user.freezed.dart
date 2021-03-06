// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      int id,
      String? name,
      String? nickname,
      String? vehicleLicensePlate,
      String? phoneNumber,
      ThumbAvatar? thumbAvatar,
      MediumAvatar? mediumAvatar,
      OriginalAvatar? originalAvatar,
      Advertisement? lastAdvertisement,
      String? email,
      int? ownGroupId) {
    return _User(
      id,
      name,
      nickname,
      vehicleLicensePlate,
      phoneNumber,
      thumbAvatar,
      mediumAvatar,
      originalAvatar,
      lastAdvertisement,
      email,
      ownGroupId,
    );
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get nickname => throw _privateConstructorUsedError;
  String? get vehicleLicensePlate => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  ThumbAvatar? get thumbAvatar => throw _privateConstructorUsedError;
  MediumAvatar? get mediumAvatar => throw _privateConstructorUsedError;
  OriginalAvatar? get originalAvatar => throw _privateConstructorUsedError;
  Advertisement? get lastAdvertisement => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get ownGroupId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? nickname,
      String? vehicleLicensePlate,
      String? phoneNumber,
      ThumbAvatar? thumbAvatar,
      MediumAvatar? mediumAvatar,
      OriginalAvatar? originalAvatar,
      Advertisement? lastAdvertisement,
      String? email,
      int? ownGroupId});

  $AdvertisementCopyWith<$Res>? get lastAdvertisement;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? nickname = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? phoneNumber = freezed,
    Object? thumbAvatar = freezed,
    Object? mediumAvatar = freezed,
    Object? originalAvatar = freezed,
    Object? lastAdvertisement = freezed,
    Object? email = freezed,
    Object? ownGroupId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleLicensePlate: vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbAvatar: thumbAvatar == freezed
          ? _value.thumbAvatar
          : thumbAvatar // ignore: cast_nullable_to_non_nullable
              as ThumbAvatar?,
      mediumAvatar: mediumAvatar == freezed
          ? _value.mediumAvatar
          : mediumAvatar // ignore: cast_nullable_to_non_nullable
              as MediumAvatar?,
      originalAvatar: originalAvatar == freezed
          ? _value.originalAvatar
          : originalAvatar // ignore: cast_nullable_to_non_nullable
              as OriginalAvatar?,
      lastAdvertisement: lastAdvertisement == freezed
          ? _value.lastAdvertisement
          : lastAdvertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ownGroupId: ownGroupId == freezed
          ? _value.ownGroupId
          : ownGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res>? get lastAdvertisement {
    if (_value.lastAdvertisement == null) {
      return null;
    }

    return $AdvertisementCopyWith<$Res>(_value.lastAdvertisement!, (value) {
      return _then(_value.copyWith(lastAdvertisement: value));
    });
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? nickname,
      String? vehicleLicensePlate,
      String? phoneNumber,
      ThumbAvatar? thumbAvatar,
      MediumAvatar? mediumAvatar,
      OriginalAvatar? originalAvatar,
      Advertisement? lastAdvertisement,
      String? email,
      int? ownGroupId});

  @override
  $AdvertisementCopyWith<$Res>? get lastAdvertisement;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? nickname = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? phoneNumber = freezed,
    Object? thumbAvatar = freezed,
    Object? mediumAvatar = freezed,
    Object? originalAvatar = freezed,
    Object? lastAdvertisement = freezed,
    Object? email = freezed,
    Object? ownGroupId = freezed,
  }) {
    return _then(_User(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbAvatar == freezed
          ? _value.thumbAvatar
          : thumbAvatar // ignore: cast_nullable_to_non_nullable
              as ThumbAvatar?,
      mediumAvatar == freezed
          ? _value.mediumAvatar
          : mediumAvatar // ignore: cast_nullable_to_non_nullable
              as MediumAvatar?,
      originalAvatar == freezed
          ? _value.originalAvatar
          : originalAvatar // ignore: cast_nullable_to_non_nullable
              as OriginalAvatar?,
      lastAdvertisement == freezed
          ? _value.lastAdvertisement
          : lastAdvertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      ownGroupId == freezed
          ? _value.ownGroupId
          : ownGroupId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      this.id,
      this.name,
      this.nickname,
      this.vehicleLicensePlate,
      this.phoneNumber,
      this.thumbAvatar,
      this.mediumAvatar,
      this.originalAvatar,
      this.lastAdvertisement,
      this.email,
      this.ownGroupId);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? nickname;
  @override
  final String? vehicleLicensePlate;
  @override
  final String? phoneNumber;
  @override
  final ThumbAvatar? thumbAvatar;
  @override
  final MediumAvatar? mediumAvatar;
  @override
  final OriginalAvatar? originalAvatar;
  @override
  final Advertisement? lastAdvertisement;
  @override
  final String? email;
  @override
  final int? ownGroupId;

  @override
  String toString() {
    return 'User(id: $id, name: $name, nickname: $nickname, vehicleLicensePlate: $vehicleLicensePlate, phoneNumber: $phoneNumber, thumbAvatar: $thumbAvatar, mediumAvatar: $mediumAvatar, originalAvatar: $originalAvatar, lastAdvertisement: $lastAdvertisement, email: $email, ownGroupId: $ownGroupId)';
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
            (identical(other.vehicleLicensePlate, vehicleLicensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleLicensePlate, vehicleLicensePlate)) &&
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
                    .equals(other.originalAvatar, originalAvatar)) &&
            (identical(other.lastAdvertisement, lastAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.lastAdvertisement, lastAdvertisement)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.ownGroupId, ownGroupId) ||
                const DeepCollectionEquality()
                    .equals(other.ownGroupId, ownGroupId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(vehicleLicensePlate) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(thumbAvatar) ^
      const DeepCollectionEquality().hash(mediumAvatar) ^
      const DeepCollectionEquality().hash(originalAvatar) ^
      const DeepCollectionEquality().hash(lastAdvertisement) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(ownGroupId);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      int id,
      String? name,
      String? nickname,
      String? vehicleLicensePlate,
      String? phoneNumber,
      ThumbAvatar? thumbAvatar,
      MediumAvatar? mediumAvatar,
      OriginalAvatar? originalAvatar,
      Advertisement? lastAdvertisement,
      String? email,
      int? ownGroupId) = _$_User;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get nickname => throw _privateConstructorUsedError;
  @override
  String? get vehicleLicensePlate => throw _privateConstructorUsedError;
  @override
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  ThumbAvatar? get thumbAvatar => throw _privateConstructorUsedError;
  @override
  MediumAvatar? get mediumAvatar => throw _privateConstructorUsedError;
  @override
  OriginalAvatar? get originalAvatar => throw _privateConstructorUsedError;
  @override
  Advertisement? get lastAdvertisement => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  int? get ownGroupId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}
