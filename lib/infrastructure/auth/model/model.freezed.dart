// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
class _$UserResponseTearOff {
  const _$UserResponseTearOff();

  _UserResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String? vehicleLicensePlate,
      @JsonKey(name: 'avatar') AvatarResponse? avatar,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'email') String? email) {
    return _UserResponse(
      id,
      firstName,
      lastName,
      nickname,
      phoneNumber,
      vehicleLicensePlate,
      avatar,
      accessToken,
      refreshToken,
      email,
    );
  }

  UserResponse fromJson(Map<String, Object> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_license_plate')
  String? get vehicleLicensePlate => throw _privateConstructorUsedError;
  @JsonKey(name: 'avatar')
  AvatarResponse? get avatar => throw _privateConstructorUsedError;
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String? vehicleLicensePlate,
      @JsonKey(name: 'avatar') AvatarResponse? avatar,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'email') String? email});

  $AvatarResponseCopyWith<$Res>? get avatar;
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? phoneNumber = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? avatar = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleLicensePlate: vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarResponse?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AvatarResponseCopyWith<$Res>? get avatar {
    if (_value.avatar == null) {
      return null;
    }

    return $AvatarResponseCopyWith<$Res>(_value.avatar!, (value) {
      return _then(_value.copyWith(avatar: value));
    });
  }
}

/// @nodoc
abstract class _$UserResponseCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$UserResponseCopyWith(
          _UserResponse value, $Res Function(_UserResponse) then) =
      __$UserResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String? vehicleLicensePlate,
      @JsonKey(name: 'avatar') AvatarResponse? avatar,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'email') String? email});

  @override
  $AvatarResponseCopyWith<$Res>? get avatar;
}

/// @nodoc
class __$UserResponseCopyWithImpl<$Res> extends _$UserResponseCopyWithImpl<$Res>
    implements _$UserResponseCopyWith<$Res> {
  __$UserResponseCopyWithImpl(
      _UserResponse _value, $Res Function(_UserResponse) _then)
      : super(_value, (v) => _then(v as _UserResponse));

  @override
  _UserResponse get _value => super._value as _UserResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? phoneNumber = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? avatar = freezed,
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as AvatarResponse?,
      accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'nickname') this.nickname,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') this.vehicleLicensePlate,
      @JsonKey(name: 'avatar') this.avatar,
      @JsonKey(name: 'access_token') this.accessToken,
      @JsonKey(name: 'refresh_token') this.refreshToken,
      @JsonKey(name: 'email') this.email);

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;
  @override
  @JsonKey(name: 'vehicle_license_plate')
  final String? vehicleLicensePlate;
  @override
  @JsonKey(name: 'avatar')
  final AvatarResponse? avatar;
  @override
  @JsonKey(name: 'access_token')
  final String? accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
  @override
  @JsonKey(name: 'email')
  final String? email;

  @override
  String toString() {
    return 'UserResponse(id: $id, firstName: $firstName, lastName: $lastName, nickname: $nickname, phoneNumber: $phoneNumber, vehicleLicensePlate: $vehicleLicensePlate, avatar: $avatar, accessToken: $accessToken, refreshToken: $refreshToken, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.vehicleLicensePlate, vehicleLicensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleLicensePlate, vehicleLicensePlate)) &&
            (identical(other.avatar, avatar) ||
                const DeepCollectionEquality().equals(other.avatar, avatar)) &&
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(vehicleLicensePlate) ^
      const DeepCollectionEquality().hash(avatar) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      __$UserResponseCopyWithImpl<_UserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserResponseToJson(this);
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String? vehicleLicensePlate,
      @JsonKey(name: 'avatar') AvatarResponse? avatar,
      @JsonKey(name: 'access_token') String? accessToken,
      @JsonKey(name: 'refresh_token') String? refreshToken,
      @JsonKey(name: 'email') String? email) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_license_plate')
  String? get vehicleLicensePlate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avatar')
  AvatarResponse? get avatar => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'access_token')
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'refresh_token')
  String? get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserResponseCopyWith<_UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

AvatarResponse _$AvatarResponseFromJson(Map<String, dynamic> json) {
  return _AvatarResponse.fromJson(json);
}

/// @nodoc
class _$AvatarResponseTearOff {
  const _$AvatarResponseTearOff();

  _AvatarResponse call(
      @JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
      @JsonKey(name: 'medium') MediumResponse medium,
      @JsonKey(name: 'original') ThumbnailResponse original) {
    return _AvatarResponse(
      thumbnail,
      medium,
      original,
    );
  }

  AvatarResponse fromJson(Map<String, Object> json) {
    return AvatarResponse.fromJson(json);
  }
}

/// @nodoc
const $AvatarResponse = _$AvatarResponseTearOff();

/// @nodoc
mixin _$AvatarResponse {
  @JsonKey(name: 'thumbnail')
  ThumbnailResponse get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(name: 'medium')
  MediumResponse get medium => throw _privateConstructorUsedError;
  @JsonKey(name: 'original')
  ThumbnailResponse get original => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarResponseCopyWith<AvatarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarResponseCopyWith<$Res> {
  factory $AvatarResponseCopyWith(
          AvatarResponse value, $Res Function(AvatarResponse) then) =
      _$AvatarResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
      @JsonKey(name: 'medium') MediumResponse medium,
      @JsonKey(name: 'original') ThumbnailResponse original});

  $ThumbnailResponseCopyWith<$Res> get thumbnail;
  $MediumResponseCopyWith<$Res> get medium;
  $ThumbnailResponseCopyWith<$Res> get original;
}

/// @nodoc
class _$AvatarResponseCopyWithImpl<$Res>
    implements $AvatarResponseCopyWith<$Res> {
  _$AvatarResponseCopyWithImpl(this._value, this._then);

  final AvatarResponse _value;
  // ignore: unused_field
  final $Res Function(AvatarResponse) _then;

  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? medium = freezed,
    Object? original = freezed,
  }) {
    return _then(_value.copyWith(
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ThumbnailResponse,
      medium: medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as MediumResponse,
      original: original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ThumbnailResponse,
    ));
  }

  @override
  $ThumbnailResponseCopyWith<$Res> get thumbnail {
    return $ThumbnailResponseCopyWith<$Res>(_value.thumbnail, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }

  @override
  $MediumResponseCopyWith<$Res> get medium {
    return $MediumResponseCopyWith<$Res>(_value.medium, (value) {
      return _then(_value.copyWith(medium: value));
    });
  }

  @override
  $ThumbnailResponseCopyWith<$Res> get original {
    return $ThumbnailResponseCopyWith<$Res>(_value.original, (value) {
      return _then(_value.copyWith(original: value));
    });
  }
}

/// @nodoc
abstract class _$AvatarResponseCopyWith<$Res>
    implements $AvatarResponseCopyWith<$Res> {
  factory _$AvatarResponseCopyWith(
          _AvatarResponse value, $Res Function(_AvatarResponse) then) =
      __$AvatarResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
      @JsonKey(name: 'medium') MediumResponse medium,
      @JsonKey(name: 'original') ThumbnailResponse original});

  @override
  $ThumbnailResponseCopyWith<$Res> get thumbnail;
  @override
  $MediumResponseCopyWith<$Res> get medium;
  @override
  $ThumbnailResponseCopyWith<$Res> get original;
}

/// @nodoc
class __$AvatarResponseCopyWithImpl<$Res>
    extends _$AvatarResponseCopyWithImpl<$Res>
    implements _$AvatarResponseCopyWith<$Res> {
  __$AvatarResponseCopyWithImpl(
      _AvatarResponse _value, $Res Function(_AvatarResponse) _then)
      : super(_value, (v) => _then(v as _AvatarResponse));

  @override
  _AvatarResponse get _value => super._value as _AvatarResponse;

  @override
  $Res call({
    Object? thumbnail = freezed,
    Object? medium = freezed,
    Object? original = freezed,
  }) {
    return _then(_AvatarResponse(
      thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as ThumbnailResponse,
      medium == freezed
          ? _value.medium
          : medium // ignore: cast_nullable_to_non_nullable
              as MediumResponse,
      original == freezed
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as ThumbnailResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvatarResponse implements _AvatarResponse {
  const _$_AvatarResponse(
      @JsonKey(name: 'thumbnail') this.thumbnail,
      @JsonKey(name: 'medium') this.medium,
      @JsonKey(name: 'original') this.original);

  factory _$_AvatarResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AvatarResponseFromJson(json);

  @override
  @JsonKey(name: 'thumbnail')
  final ThumbnailResponse thumbnail;
  @override
  @JsonKey(name: 'medium')
  final MediumResponse medium;
  @override
  @JsonKey(name: 'original')
  final ThumbnailResponse original;

  @override
  String toString() {
    return 'AvatarResponse(thumbnail: $thumbnail, medium: $medium, original: $original)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvatarResponse &&
            (identical(other.thumbnail, thumbnail) ||
                const DeepCollectionEquality()
                    .equals(other.thumbnail, thumbnail)) &&
            (identical(other.medium, medium) ||
                const DeepCollectionEquality().equals(other.medium, medium)) &&
            (identical(other.original, original) ||
                const DeepCollectionEquality()
                    .equals(other.original, original)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(thumbnail) ^
      const DeepCollectionEquality().hash(medium) ^
      const DeepCollectionEquality().hash(original);

  @JsonKey(ignore: true)
  @override
  _$AvatarResponseCopyWith<_AvatarResponse> get copyWith =>
      __$AvatarResponseCopyWithImpl<_AvatarResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AvatarResponseToJson(this);
  }
}

abstract class _AvatarResponse implements AvatarResponse {
  const factory _AvatarResponse(
          @JsonKey(name: 'thumbnail') ThumbnailResponse thumbnail,
          @JsonKey(name: 'medium') MediumResponse medium,
          @JsonKey(name: 'original') ThumbnailResponse original) =
      _$_AvatarResponse;

  factory _AvatarResponse.fromJson(Map<String, dynamic> json) =
      _$_AvatarResponse.fromJson;

  @override
  @JsonKey(name: 'thumbnail')
  ThumbnailResponse get thumbnail => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'medium')
  MediumResponse get medium => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'original')
  ThumbnailResponse get original => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvatarResponseCopyWith<_AvatarResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ThumbnailResponse _$ThumbnailResponseFromJson(Map<String, dynamic> json) {
  return _ThumbnailResponse.fromJson(json);
}

/// @nodoc
class _$ThumbnailResponseTearOff {
  const _$ThumbnailResponseTearOff();

  _ThumbnailResponse call(
      @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) {
    return _ThumbnailResponse(
      id,
      url,
    );
  }

  ThumbnailResponse fromJson(Map<String, Object> json) {
    return ThumbnailResponse.fromJson(json);
  }
}

/// @nodoc
const $ThumbnailResponse = _$ThumbnailResponseTearOff();

/// @nodoc
mixin _$ThumbnailResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThumbnailResponseCopyWith<ThumbnailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThumbnailResponseCopyWith<$Res> {
  factory $ThumbnailResponseCopyWith(
          ThumbnailResponse value, $Res Function(ThumbnailResponse) then) =
      _$ThumbnailResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$ThumbnailResponseCopyWithImpl<$Res>
    implements $ThumbnailResponseCopyWith<$Res> {
  _$ThumbnailResponseCopyWithImpl(this._value, this._then);

  final ThumbnailResponse _value;
  // ignore: unused_field
  final $Res Function(ThumbnailResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ThumbnailResponseCopyWith<$Res>
    implements $ThumbnailResponseCopyWith<$Res> {
  factory _$ThumbnailResponseCopyWith(
          _ThumbnailResponse value, $Res Function(_ThumbnailResponse) then) =
      __$ThumbnailResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$ThumbnailResponseCopyWithImpl<$Res>
    extends _$ThumbnailResponseCopyWithImpl<$Res>
    implements _$ThumbnailResponseCopyWith<$Res> {
  __$ThumbnailResponseCopyWithImpl(
      _ThumbnailResponse _value, $Res Function(_ThumbnailResponse) _then)
      : super(_value, (v) => _then(v as _ThumbnailResponse));

  @override
  _ThumbnailResponse get _value => super._value as _ThumbnailResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_ThumbnailResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ThumbnailResponse implements _ThumbnailResponse {
  const _$_ThumbnailResponse(
      @JsonKey(name: 'id') this.id, @JsonKey(name: 'url') this.url);

  factory _$_ThumbnailResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ThumbnailResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'ThumbnailResponse(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThumbnailResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$ThumbnailResponseCopyWith<_ThumbnailResponse> get copyWith =>
      __$ThumbnailResponseCopyWithImpl<_ThumbnailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThumbnailResponseToJson(this);
  }
}

abstract class _ThumbnailResponse implements ThumbnailResponse {
  const factory _ThumbnailResponse(
          @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) =
      _$_ThumbnailResponse;

  factory _ThumbnailResponse.fromJson(Map<String, dynamic> json) =
      _$_ThumbnailResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThumbnailResponseCopyWith<_ThumbnailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

MediumResponse _$MediumResponseFromJson(Map<String, dynamic> json) {
  return _MediumResponse.fromJson(json);
}

/// @nodoc
class _$MediumResponseTearOff {
  const _$MediumResponseTearOff();

  _MediumResponse call(
      @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) {
    return _MediumResponse(
      id,
      url,
    );
  }

  MediumResponse fromJson(Map<String, Object> json) {
    return MediumResponse.fromJson(json);
  }
}

/// @nodoc
const $MediumResponse = _$MediumResponseTearOff();

/// @nodoc
mixin _$MediumResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediumResponseCopyWith<MediumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediumResponseCopyWith<$Res> {
  factory $MediumResponseCopyWith(
          MediumResponse value, $Res Function(MediumResponse) then) =
      _$MediumResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$MediumResponseCopyWithImpl<$Res>
    implements $MediumResponseCopyWith<$Res> {
  _$MediumResponseCopyWithImpl(this._value, this._then);

  final MediumResponse _value;
  // ignore: unused_field
  final $Res Function(MediumResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MediumResponseCopyWith<$Res>
    implements $MediumResponseCopyWith<$Res> {
  factory _$MediumResponseCopyWith(
          _MediumResponse value, $Res Function(_MediumResponse) then) =
      __$MediumResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$MediumResponseCopyWithImpl<$Res>
    extends _$MediumResponseCopyWithImpl<$Res>
    implements _$MediumResponseCopyWith<$Res> {
  __$MediumResponseCopyWithImpl(
      _MediumResponse _value, $Res Function(_MediumResponse) _then)
      : super(_value, (v) => _then(v as _MediumResponse));

  @override
  _MediumResponse get _value => super._value as _MediumResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_MediumResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediumResponse implements _MediumResponse {
  const _$_MediumResponse(
      @JsonKey(name: 'id') this.id, @JsonKey(name: 'url') this.url);

  factory _$_MediumResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_MediumResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'MediumResponse(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MediumResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$MediumResponseCopyWith<_MediumResponse> get copyWith =>
      __$MediumResponseCopyWithImpl<_MediumResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MediumResponseToJson(this);
  }
}

abstract class _MediumResponse implements MediumResponse {
  const factory _MediumResponse(
          @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) =
      _$_MediumResponse;

  factory _MediumResponse.fromJson(Map<String, dynamic> json) =
      _$_MediumResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MediumResponseCopyWith<_MediumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

OriginalResponse _$OriginalResponseFromJson(Map<String, dynamic> json) {
  return _OriginalResponse.fromJson(json);
}

/// @nodoc
class _$OriginalResponseTearOff {
  const _$OriginalResponseTearOff();

  _OriginalResponse call(
      @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) {
    return _OriginalResponse(
      id,
      url,
    );
  }

  OriginalResponse fromJson(Map<String, Object> json) {
    return OriginalResponse.fromJson(json);
  }
}

/// @nodoc
const $OriginalResponse = _$OriginalResponseTearOff();

/// @nodoc
mixin _$OriginalResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OriginalResponseCopyWith<OriginalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OriginalResponseCopyWith<$Res> {
  factory $OriginalResponseCopyWith(
          OriginalResponse value, $Res Function(OriginalResponse) then) =
      _$OriginalResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$OriginalResponseCopyWithImpl<$Res>
    implements $OriginalResponseCopyWith<$Res> {
  _$OriginalResponseCopyWithImpl(this._value, this._then);

  final OriginalResponse _value;
  // ignore: unused_field
  final $Res Function(OriginalResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OriginalResponseCopyWith<$Res>
    implements $OriginalResponseCopyWith<$Res> {
  factory _$OriginalResponseCopyWith(
          _OriginalResponse value, $Res Function(_OriginalResponse) then) =
      __$OriginalResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$OriginalResponseCopyWithImpl<$Res>
    extends _$OriginalResponseCopyWithImpl<$Res>
    implements _$OriginalResponseCopyWith<$Res> {
  __$OriginalResponseCopyWithImpl(
      _OriginalResponse _value, $Res Function(_OriginalResponse) _then)
      : super(_value, (v) => _then(v as _OriginalResponse));

  @override
  _OriginalResponse get _value => super._value as _OriginalResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_OriginalResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OriginalResponse implements _OriginalResponse {
  const _$_OriginalResponse(
      @JsonKey(name: 'id') this.id, @JsonKey(name: 'url') this.url);

  factory _$_OriginalResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_OriginalResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'OriginalResponse(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OriginalResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$OriginalResponseCopyWith<_OriginalResponse> get copyWith =>
      __$OriginalResponseCopyWithImpl<_OriginalResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OriginalResponseToJson(this);
  }
}

abstract class _OriginalResponse implements OriginalResponse {
  const factory _OriginalResponse(
          @JsonKey(name: 'id') int id, @JsonKey(name: 'url') String url) =
      _$_OriginalResponse;

  factory _OriginalResponse.fromJson(Map<String, dynamic> json) =
      _$_OriginalResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OriginalResponseCopyWith<_OriginalResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
class _$UserRequestTearOff {
  const _$UserRequestTearOff();

  _UserRequest call(@JsonKey(name: 'phone_number') String phoneNumber) {
    return _UserRequest(
      phoneNumber,
    );
  }

  UserRequest fromJson(Map<String, Object> json) {
    return UserRequest.fromJson(json);
  }
}

/// @nodoc
const $UserRequest = _$UserRequestTearOff();

/// @nodoc
mixin _$UserRequest {
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRequestCopyWith<$Res> {
  factory $UserRequestCopyWith(
          UserRequest value, $Res Function(UserRequest) then) =
      _$UserRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class _$UserRequestCopyWithImpl<$Res> implements $UserRequestCopyWith<$Res> {
  _$UserRequestCopyWithImpl(this._value, this._then);

  final UserRequest _value;
  // ignore: unused_field
  final $Res Function(UserRequest) _then;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRequestCopyWith<$Res>
    implements $UserRequestCopyWith<$Res> {
  factory _$UserRequestCopyWith(
          _UserRequest value, $Res Function(_UserRequest) then) =
      __$UserRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class __$UserRequestCopyWithImpl<$Res> extends _$UserRequestCopyWithImpl<$Res>
    implements _$UserRequestCopyWith<$Res> {
  __$UserRequestCopyWithImpl(
      _UserRequest _value, $Res Function(_UserRequest) _then)
      : super(_value, (v) => _then(v as _UserRequest));

  @override
  _UserRequest get _value => super._value as _UserRequest;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_UserRequest(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRequest implements _UserRequest {
  const _$_UserRequest(@JsonKey(name: 'phone_number') this.phoneNumber);

  factory _$_UserRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRequestFromJson(json);

  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'UserRequest(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRequest &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$UserRequestCopyWith<_UserRequest> get copyWith =>
      __$UserRequestCopyWithImpl<_UserRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRequestToJson(this);
  }
}

abstract class _UserRequest implements UserRequest {
  const factory _UserRequest(
      @JsonKey(name: 'phone_number') String phoneNumber) = _$_UserRequest;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$_UserRequest.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRequestCopyWith<_UserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

UserRegister _$UserRegisterFromJson(Map<String, dynamic> json) {
  return _UserRegister.fromJson(json);
}

/// @nodoc
class _$UserRegisterTearOff {
  const _$UserRegisterTearOff();

  _UserRegister call(
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber) {
    return _UserRegister(
      firstName,
      lastName,
      nickname,
      phoneNumber,
    );
  }

  UserRegister fromJson(Map<String, Object> json) {
    return UserRegister.fromJson(json);
  }
}

/// @nodoc
const $UserRegister = _$UserRegisterTearOff();

/// @nodoc
mixin _$UserRegister {
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserRegisterCopyWith<UserRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterCopyWith<$Res> {
  factory $UserRegisterCopyWith(
          UserRegister value, $Res Function(UserRegister) then) =
      _$UserRegisterCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class _$UserRegisterCopyWithImpl<$Res> implements $UserRegisterCopyWith<$Res> {
  _$UserRegisterCopyWithImpl(this._value, this._then);

  final UserRegister _value;
  // ignore: unused_field
  final $Res Function(UserRegister) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserRegisterCopyWith<$Res>
    implements $UserRegisterCopyWith<$Res> {
  factory _$UserRegisterCopyWith(
          _UserRegister value, $Res Function(_UserRegister) then) =
      __$UserRegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber});
}

/// @nodoc
class __$UserRegisterCopyWithImpl<$Res> extends _$UserRegisterCopyWithImpl<$Res>
    implements _$UserRegisterCopyWith<$Res> {
  __$UserRegisterCopyWithImpl(
      _UserRegister _value, $Res Function(_UserRegister) _then)
      : super(_value, (v) => _then(v as _UserRegister));

  @override
  _UserRegister get _value => super._value as _UserRegister;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? nickname = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_UserRegister(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserRegister implements _UserRegister {
  const _$_UserRegister(
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'nickname') this.nickname,
      @JsonKey(name: 'phone_number') this.phoneNumber);

  factory _$_UserRegister.fromJson(Map<String, dynamic> json) =>
      _$_$_UserRegisterFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  @JsonKey(name: 'nickname')
  final String nickname;
  @override
  @JsonKey(name: 'phone_number')
  final String phoneNumber;

  @override
  String toString() {
    return 'UserRegister(firstName: $firstName, lastName: $lastName, nickname: $nickname, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserRegister &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$UserRegisterCopyWith<_UserRegister> get copyWith =>
      __$UserRegisterCopyWithImpl<_UserRegister>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserRegisterToJson(this);
  }
}

abstract class _UserRegister implements UserRegister {
  const factory _UserRegister(
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber) = _$_UserRegister;

  factory _UserRegister.fromJson(Map<String, dynamic> json) =
      _$_UserRegister.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nickname')
  String get nickname => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserRegisterCopyWith<_UserRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
class _$ErrorsTearOff {
  const _$ErrorsTearOff();

  _Errors call(@JsonKey(name: 'errors') List<String> errors) {
    return _Errors(
      errors,
    );
  }

  Errors fromJson(Map<String, Object> json) {
    return Errors.fromJson(json);
  }
}

/// @nodoc
const $Errors = _$ErrorsTearOff();

/// @nodoc
mixin _$Errors {
  @JsonKey(name: 'errors')
  List<String> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'errors') List<String> errors});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res> implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  final Errors _value;
  // ignore: unused_field
  final $Res Function(Errors) _then;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ErrorsCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$ErrorsCopyWith(_Errors value, $Res Function(_Errors) then) =
      __$ErrorsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'errors') List<String> errors});
}

/// @nodoc
class __$ErrorsCopyWithImpl<$Res> extends _$ErrorsCopyWithImpl<$Res>
    implements _$ErrorsCopyWith<$Res> {
  __$ErrorsCopyWithImpl(_Errors _value, $Res Function(_Errors) _then)
      : super(_value, (v) => _then(v as _Errors));

  @override
  _Errors get _value => super._value as _Errors;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_Errors(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(@JsonKey(name: 'errors') this.errors);

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorsFromJson(json);

  @override
  @JsonKey(name: 'errors')
  final List<String> errors;

  @override
  String toString() {
    return 'Errors(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Errors &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errors);

  @JsonKey(ignore: true)
  @override
  _$ErrorsCopyWith<_Errors> get copyWith =>
      __$ErrorsCopyWithImpl<_Errors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorsToJson(this);
  }
}

abstract class _Errors implements Errors {
  const factory _Errors(@JsonKey(name: 'errors') List<String> errors) =
      _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  @JsonKey(name: 'errors')
  List<String> get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorsCopyWith<_Errors> get copyWith => throw _privateConstructorUsedError;
}
