// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
class _$UserResponseTearOff {
  const _$UserResponseTearOff();

// ignore: unused_element
  _UserResponse call(
      {@required
      @JsonKey(name: 'first_name')
          String firstName,
      @required
      @JsonKey(name: 'last_name')
          String lastName,
      @required
      @JsonKey(name: 'nickname')
          String nickname,
      @required
      @JsonKey(name: 'phone_number')
          String phoneNumber,
      @required
      @JsonKey(name: 'vehicle_license_plate')
          String vehicleLicensePlate,
      @required
      @JsonKey(name: 'access_token')
          String accessToken,
      @required
      @JsonKey(name: 'refresh_token')
          String refreshToken}) {
    return _UserResponse(
      firstName: firstName,
      lastName: lastName,
      nickname: nickname,
      phoneNumber: phoneNumber,
      vehicleLicensePlate: vehicleLicensePlate,
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }

// ignore: unused_element
  UserResponse fromJson(Map<String, Object> json) {
    return UserResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserResponse = _$UserResponseTearOff();

/// @nodoc
mixin _$UserResponse {
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  @JsonKey(name: 'nickname')
  String get nickname;
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @JsonKey(name: 'vehicle_license_plate')
  String get vehicleLicensePlate;
  @JsonKey(name: 'access_token')
  String get accessToken;
  @JsonKey(name: 'refresh_token')
  String get refreshToken;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserResponseCopyWith<UserResponse> get copyWith;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
          UserResponse value, $Res Function(UserResponse) then) =
      _$UserResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res> implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  final UserResponse _value;
  // ignore: unused_field
  final $Res Function(UserResponse) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
    Object vehicleLicensePlate = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      vehicleLicensePlate: vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
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
      {@JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      @JsonKey(name: 'nickname') String nickname,
      @JsonKey(name: 'phone_number') String phoneNumber,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'refresh_token') String refreshToken});
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
    Object vehicleLicensePlate = freezed,
    Object accessToken = freezed,
    Object refreshToken = freezed,
  }) {
    return _then(_UserResponse(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
      vehicleLicensePlate: vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate as String,
      accessToken:
          accessToken == freezed ? _value.accessToken : accessToken as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserResponse implements _UserResponse {
  const _$_UserResponse(
      {@required
      @JsonKey(name: 'first_name')
          this.firstName,
      @required
      @JsonKey(name: 'last_name')
          this.lastName,
      @required
      @JsonKey(name: 'nickname')
          this.nickname,
      @required
      @JsonKey(name: 'phone_number')
          this.phoneNumber,
      @required
      @JsonKey(name: 'vehicle_license_plate')
          this.vehicleLicensePlate,
      @required
      @JsonKey(name: 'access_token')
          this.accessToken,
      @required
      @JsonKey(name: 'refresh_token')
          this.refreshToken})
      : assert(firstName != null),
        assert(lastName != null),
        assert(nickname != null),
        assert(phoneNumber != null),
        assert(vehicleLicensePlate != null),
        assert(accessToken != null),
        assert(refreshToken != null);

  factory _$_UserResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UserResponseFromJson(json);

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
  final String vehicleLicensePlate;
  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'UserResponse(firstName: $firstName, lastName: $lastName, nickname: $nickname, phoneNumber: $phoneNumber, vehicleLicensePlate: $vehicleLicensePlate, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserResponse &&
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
            (identical(other.accessToken, accessToken) ||
                const DeepCollectionEquality()
                    .equals(other.accessToken, accessToken)) &&
            (identical(other.refreshToken, refreshToken) ||
                const DeepCollectionEquality()
                    .equals(other.refreshToken, refreshToken)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(vehicleLicensePlate) ^
      const DeepCollectionEquality().hash(accessToken) ^
      const DeepCollectionEquality().hash(refreshToken);

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
      {@required
      @JsonKey(name: 'first_name')
          String firstName,
      @required
      @JsonKey(name: 'last_name')
          String lastName,
      @required
      @JsonKey(name: 'nickname')
          String nickname,
      @required
      @JsonKey(name: 'phone_number')
          String phoneNumber,
      @required
      @JsonKey(name: 'vehicle_license_plate')
          String vehicleLicensePlate,
      @required
      @JsonKey(name: 'access_token')
          String accessToken,
      @required
      @JsonKey(name: 'refresh_token')
          String refreshToken}) = _$_UserResponse;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$_UserResponse.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(name: 'vehicle_license_plate')
  String get vehicleLicensePlate;
  @override
  @JsonKey(name: 'access_token')
  String get accessToken;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$UserResponseCopyWith<_UserResponse> get copyWith;
}

UserRequest _$UserRequestFromJson(Map<String, dynamic> json) {
  return _UserRequest.fromJson(json);
}

/// @nodoc
class _$UserRequestTearOff {
  const _$UserRequestTearOff();

// ignore: unused_element
  _UserRequest call(
      {@required @JsonKey(name: 'phone_number') String phoneNumber}) {
    return _UserRequest(
      phoneNumber: phoneNumber,
    );
  }

// ignore: unused_element
  UserRequest fromJson(Map<String, Object> json) {
    return UserRequest.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserRequest = _$UserRequestTearOff();

/// @nodoc
mixin _$UserRequest {
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserRequestCopyWith<UserRequest> get copyWith;
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
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
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
    Object phoneNumber = freezed,
  }) {
    return _then(_UserRequest(
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserRequest implements _UserRequest {
  const _$_UserRequest(
      {@required @JsonKey(name: 'phone_number') this.phoneNumber})
      : assert(phoneNumber != null);

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
          {@required @JsonKey(name: 'phone_number') String phoneNumber}) =
      _$_UserRequest;

  factory _UserRequest.fromJson(Map<String, dynamic> json) =
      _$_UserRequest.fromJson;

  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$UserRequestCopyWith<_UserRequest> get copyWith;
}

UserRegister _$UserRegisterFromJson(Map<String, dynamic> json) {
  return _UserRegister.fromJson(json);
}

/// @nodoc
class _$UserRegisterTearOff {
  const _$UserRegisterTearOff();

// ignore: unused_element
  _UserRegister call(
      {@required @JsonKey(name: 'first_name') String firstName,
      @required @JsonKey(name: 'last_name') String lastName,
      @required @JsonKey(name: 'nickname') String nickname,
      @required @JsonKey(name: 'phone_number') String phoneNumber}) {
    return _UserRegister(
      firstName: firstName,
      lastName: lastName,
      nickname: nickname,
      phoneNumber: phoneNumber,
    );
  }

// ignore: unused_element
  UserRegister fromJson(Map<String, Object> json) {
    return UserRegister.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserRegister = _$UserRegisterTearOff();

/// @nodoc
mixin _$UserRegister {
  @JsonKey(name: 'first_name')
  String get firstName;
  @JsonKey(name: 'last_name')
  String get lastName;
  @JsonKey(name: 'nickname')
  String get nickname;
  @JsonKey(name: 'phone_number')
  String get phoneNumber;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserRegisterCopyWith<UserRegister> get copyWith;
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
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
    Object firstName = freezed,
    Object lastName = freezed,
    Object nickname = freezed,
    Object phoneNumber = freezed,
  }) {
    return _then(_UserRegister(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      nickname: nickname == freezed ? _value.nickname : nickname as String,
      phoneNumber:
          phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserRegister implements _UserRegister {
  const _$_UserRegister(
      {@required @JsonKey(name: 'first_name') this.firstName,
      @required @JsonKey(name: 'last_name') this.lastName,
      @required @JsonKey(name: 'nickname') this.nickname,
      @required @JsonKey(name: 'phone_number') this.phoneNumber})
      : assert(firstName != null),
        assert(lastName != null),
        assert(nickname != null),
        assert(phoneNumber != null);

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
          {@required @JsonKey(name: 'first_name') String firstName,
          @required @JsonKey(name: 'last_name') String lastName,
          @required @JsonKey(name: 'nickname') String nickname,
          @required @JsonKey(name: 'phone_number') String phoneNumber}) =
      _$_UserRegister;

  factory _UserRegister.fromJson(Map<String, dynamic> json) =
      _$_UserRegister.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String get firstName;
  @override
  @JsonKey(name: 'last_name')
  String get lastName;
  @override
  @JsonKey(name: 'nickname')
  String get nickname;
  @override
  @JsonKey(name: 'phone_number')
  String get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$UserRegisterCopyWith<_UserRegister> get copyWith;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
class _$ErrorsTearOff {
  const _$ErrorsTearOff();

// ignore: unused_element
  _Errors call({@JsonKey(name: 'errors') List<String> errors}) {
    return _Errors(
      errors: errors,
    );
  }

// ignore: unused_element
  Errors fromJson(Map<String, Object> json) {
    return Errors.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Errors = _$ErrorsTearOff();

/// @nodoc
mixin _$Errors {
  @JsonKey(name: 'errors')
  List<String> get errors;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith;
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
    Object errors = freezed,
  }) {
    return _then(_value.copyWith(
      errors: errors == freezed ? _value.errors : errors as List<String>,
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
    Object errors = freezed,
  }) {
    return _then(_Errors(
      errors: errors == freezed ? _value.errors : errors as List<String>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Errors implements _Errors {
  const _$_Errors({@JsonKey(name: 'errors') this.errors});

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
  const factory _Errors({@JsonKey(name: 'errors') List<String> errors}) =
      _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  @JsonKey(name: 'errors')
  List<String> get errors;
  @override
  @JsonKey(ignore: true)
  _$ErrorsCopyWith<_Errors> get copyWith;
}
