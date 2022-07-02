// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

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
      int? ownGroupId,
      {required bool? isOnline}) {
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
      isOnline: isOnline,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
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
  bool? get isOnline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
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
      int? ownGroupId,
      bool? isOnline});

  $ThumbAvatarCopyWith<$Res>? get thumbAvatar;
  $MediumAvatarCopyWith<$Res>? get mediumAvatar;
  $OriginalAvatarCopyWith<$Res>? get originalAvatar;
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
    Object? isOnline = freezed,
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
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $ThumbAvatarCopyWith<$Res>? get thumbAvatar {
    if (_value.thumbAvatar == null) {
      return null;
    }

    return $ThumbAvatarCopyWith<$Res>(_value.thumbAvatar!, (value) {
      return _then(_value.copyWith(thumbAvatar: value));
    });
  }

  @override
  $MediumAvatarCopyWith<$Res>? get mediumAvatar {
    if (_value.mediumAvatar == null) {
      return null;
    }

    return $MediumAvatarCopyWith<$Res>(_value.mediumAvatar!, (value) {
      return _then(_value.copyWith(mediumAvatar: value));
    });
  }

  @override
  $OriginalAvatarCopyWith<$Res>? get originalAvatar {
    if (_value.originalAvatar == null) {
      return null;
    }

    return $OriginalAvatarCopyWith<$Res>(_value.originalAvatar!, (value) {
      return _then(_value.copyWith(originalAvatar: value));
    });
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
      int? ownGroupId,
      bool? isOnline});

  @override
  $ThumbAvatarCopyWith<$Res>? get thumbAvatar;
  @override
  $MediumAvatarCopyWith<$Res>? get mediumAvatar;
  @override
  $OriginalAvatarCopyWith<$Res>? get originalAvatar;
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
    Object? isOnline = freezed,
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
      isOnline: isOnline == freezed
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
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
      this.ownGroupId,
      {required this.isOnline});

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

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
  final bool? isOnline;

  @override
  String toString() {
    return 'User(id: $id, name: $name, nickname: $nickname, vehicleLicensePlate: $vehicleLicensePlate, phoneNumber: $phoneNumber, thumbAvatar: $thumbAvatar, mediumAvatar: $mediumAvatar, originalAvatar: $originalAvatar, lastAdvertisement: $lastAdvertisement, email: $email, ownGroupId: $ownGroupId, isOnline: $isOnline)';
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
                    .equals(other.ownGroupId, ownGroupId)) &&
            (identical(other.isOnline, isOnline) ||
                const DeepCollectionEquality()
                    .equals(other.isOnline, isOnline)));
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
      const DeepCollectionEquality().hash(ownGroupId) ^
      const DeepCollectionEquality().hash(isOnline);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
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
      int? ownGroupId,
      {required bool? isOnline}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

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
  bool? get isOnline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

ThumbAvatar _$ThumbAvatarFromJson(Map<String, dynamic> json) {
  return _ThumbAvatar.fromJson(json);
}

/// @nodoc
class _$ThumbAvatarTearOff {
  const _$ThumbAvatarTearOff();

  _ThumbAvatar call(String url) {
    return _ThumbAvatar(
      url,
    );
  }

  ThumbAvatar fromJson(Map<String, Object> json) {
    return ThumbAvatar.fromJson(json);
  }
}

/// @nodoc
const $ThumbAvatar = _$ThumbAvatarTearOff();

/// @nodoc
mixin _$ThumbAvatar {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbAvatarCopyWith<ThumbAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbAvatarCopyWith<$Res> {
  factory $ThumbAvatarCopyWith(
          ThumbAvatar value, $Res Function(ThumbAvatar) then) =
      _$ThumbAvatarCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$ThumbAvatarCopyWithImpl<$Res> implements $ThumbAvatarCopyWith<$Res> {
  _$ThumbAvatarCopyWithImpl(this._value, this._then);

  final ThumbAvatar _value;
  // ignore: unused_field
  final $Res Function(ThumbAvatar) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ThumbAvatarCopyWith<$Res>
    implements $ThumbAvatarCopyWith<$Res> {
  factory _$ThumbAvatarCopyWith(
          _ThumbAvatar value, $Res Function(_ThumbAvatar) then) =
      __$ThumbAvatarCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$ThumbAvatarCopyWithImpl<$Res> extends _$ThumbAvatarCopyWithImpl<$Res>
    implements _$ThumbAvatarCopyWith<$Res> {
  __$ThumbAvatarCopyWithImpl(
      _ThumbAvatar _value, $Res Function(_ThumbAvatar) _then)
      : super(_value, (v) => _then(v as _ThumbAvatar));

  @override
  _ThumbAvatar get _value => super._value as _ThumbAvatar;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_ThumbAvatar(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThumbAvatar implements _ThumbAvatar {
  const _$_ThumbAvatar(this.url);

  factory _$_ThumbAvatar.fromJson(Map<String, dynamic> json) =>
      _$_$_ThumbAvatarFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'ThumbAvatar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThumbAvatar &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ThumbAvatarCopyWith<_ThumbAvatar> get copyWith =>
      __$ThumbAvatarCopyWithImpl<_ThumbAvatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThumbAvatarToJson(this);
  }
}

abstract class _ThumbAvatar implements ThumbAvatar {
  const factory _ThumbAvatar(String url) = _$_ThumbAvatar;

  factory _ThumbAvatar.fromJson(Map<String, dynamic> json) =
      _$_ThumbAvatar.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThumbAvatarCopyWith<_ThumbAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

MediumAvatar _$MediumAvatarFromJson(Map<String, dynamic> json) {
  return _MediumAvatar.fromJson(json);
}

/// @nodoc
class _$MediumAvatarTearOff {
  const _$MediumAvatarTearOff();

  _MediumAvatar call(String url) {
    return _MediumAvatar(
      url,
    );
  }

  MediumAvatar fromJson(Map<String, Object> json) {
    return MediumAvatar.fromJson(json);
  }
}

/// @nodoc
const $MediumAvatar = _$MediumAvatarTearOff();

/// @nodoc
mixin _$MediumAvatar {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediumAvatarCopyWith<MediumAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumAvatarCopyWith<$Res> {
  factory $MediumAvatarCopyWith(
          MediumAvatar value, $Res Function(MediumAvatar) then) =
      _$MediumAvatarCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$MediumAvatarCopyWithImpl<$Res> implements $MediumAvatarCopyWith<$Res> {
  _$MediumAvatarCopyWithImpl(this._value, this._then);

  final MediumAvatar _value;
  // ignore: unused_field
  final $Res Function(MediumAvatar) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MediumAvatarCopyWith<$Res>
    implements $MediumAvatarCopyWith<$Res> {
  factory _$MediumAvatarCopyWith(
          _MediumAvatar value, $Res Function(_MediumAvatar) then) =
      __$MediumAvatarCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$MediumAvatarCopyWithImpl<$Res> extends _$MediumAvatarCopyWithImpl<$Res>
    implements _$MediumAvatarCopyWith<$Res> {
  __$MediumAvatarCopyWithImpl(
      _MediumAvatar _value, $Res Function(_MediumAvatar) _then)
      : super(_value, (v) => _then(v as _MediumAvatar));

  @override
  _MediumAvatar get _value => super._value as _MediumAvatar;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_MediumAvatar(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediumAvatar implements _MediumAvatar {
  const _$_MediumAvatar(this.url);

  factory _$_MediumAvatar.fromJson(Map<String, dynamic> json) =>
      _$_$_MediumAvatarFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'MediumAvatar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediumAvatar &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$MediumAvatarCopyWith<_MediumAvatar> get copyWith =>
      __$MediumAvatarCopyWithImpl<_MediumAvatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediumAvatarToJson(this);
  }
}

abstract class _MediumAvatar implements MediumAvatar {
  const factory _MediumAvatar(String url) = _$_MediumAvatar;

  factory _MediumAvatar.fromJson(Map<String, dynamic> json) =
      _$_MediumAvatar.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MediumAvatarCopyWith<_MediumAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

OriginalAvatar _$OriginalAvatarFromJson(Map<String, dynamic> json) {
  return _OriginalAvatar.fromJson(json);
}

/// @nodoc
class _$OriginalAvatarTearOff {
  const _$OriginalAvatarTearOff();

  _OriginalAvatar call(String url) {
    return _OriginalAvatar(
      url,
    );
  }

  OriginalAvatar fromJson(Map<String, Object> json) {
    return OriginalAvatar.fromJson(json);
  }
}

/// @nodoc
const $OriginalAvatar = _$OriginalAvatarTearOff();

/// @nodoc
mixin _$OriginalAvatar {
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginalAvatarCopyWith<OriginalAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginalAvatarCopyWith<$Res> {
  factory $OriginalAvatarCopyWith(
          OriginalAvatar value, $Res Function(OriginalAvatar) then) =
      _$OriginalAvatarCopyWithImpl<$Res>;
  $Res call({String url});
}

/// @nodoc
class _$OriginalAvatarCopyWithImpl<$Res>
    implements $OriginalAvatarCopyWith<$Res> {
  _$OriginalAvatarCopyWithImpl(this._value, this._then);

  final OriginalAvatar _value;
  // ignore: unused_field
  final $Res Function(OriginalAvatar) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OriginalAvatarCopyWith<$Res>
    implements $OriginalAvatarCopyWith<$Res> {
  factory _$OriginalAvatarCopyWith(
          _OriginalAvatar value, $Res Function(_OriginalAvatar) then) =
      __$OriginalAvatarCopyWithImpl<$Res>;
  @override
  $Res call({String url});
}

/// @nodoc
class __$OriginalAvatarCopyWithImpl<$Res>
    extends _$OriginalAvatarCopyWithImpl<$Res>
    implements _$OriginalAvatarCopyWith<$Res> {
  __$OriginalAvatarCopyWithImpl(
      _OriginalAvatar _value, $Res Function(_OriginalAvatar) _then)
      : super(_value, (v) => _then(v as _OriginalAvatar));

  @override
  _OriginalAvatar get _value => super._value as _OriginalAvatar;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_OriginalAvatar(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OriginalAvatar implements _OriginalAvatar {
  const _$_OriginalAvatar(this.url);

  factory _$_OriginalAvatar.fromJson(Map<String, dynamic> json) =>
      _$_$_OriginalAvatarFromJson(json);

  @override
  final String url;

  @override
  String toString() {
    return 'OriginalAvatar(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OriginalAvatar &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$OriginalAvatarCopyWith<_OriginalAvatar> get copyWith =>
      __$OriginalAvatarCopyWithImpl<_OriginalAvatar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OriginalAvatarToJson(this);
  }
}

abstract class _OriginalAvatar implements OriginalAvatar {
  const factory _OriginalAvatar(String url) = _$_OriginalAvatar;

  factory _OriginalAvatar.fromJson(Map<String, dynamic> json) =
      _$_OriginalAvatar.fromJson;

  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OriginalAvatarCopyWith<_OriginalAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}
