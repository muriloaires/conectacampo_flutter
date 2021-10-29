// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  InvalidSmsCode invalidSmsCode() {
    return const InvalidSmsCode();
  }

  InvalidPhoneNumber invalidPhoneNumber() {
    return const InvalidPhoneNumber();
  }

  UnknownError unknownError(FirebaseAuthException exception) {
    return UnknownError(
      exception,
    );
  }

  CodeAutoRetrievalTimeout codeAutoRetrievalTimeout() {
    return const CodeAutoRetrievalTimeout();
  }

  InvalidFullName invalidFullName() {
    return const InvalidFullName();
  }

  InvalidNickname invalidNickname() {
    return const InvalidNickname();
  }

  InvalidVerificationId invalidVerificationId() {
    return const InvalidVerificationId();
  }

  UserNotFound userNotFound() {
    return const UserNotFound();
  }

  Unauthorized unauthorized() {
    return const Unauthorized();
  }

  ApplicationError applicationError() {
    return const ApplicationError();
  }

  PhoneAlreadyUsed phoneAlreadyUsed() {
    return const PhoneAlreadyUsed();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidSmsCodeCopyWith<$Res> {
  factory $InvalidSmsCodeCopyWith(
          InvalidSmsCode value, $Res Function(InvalidSmsCode) then) =
      _$InvalidSmsCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidSmsCodeCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidSmsCodeCopyWith<$Res> {
  _$InvalidSmsCodeCopyWithImpl(
      InvalidSmsCode _value, $Res Function(InvalidSmsCode) _then)
      : super(_value, (v) => _then(v as InvalidSmsCode));

  @override
  InvalidSmsCode get _value => super._value as InvalidSmsCode;
}

/// @nodoc

class _$InvalidSmsCode implements InvalidSmsCode {
  const _$InvalidSmsCode();

  @override
  String toString() {
    return 'AuthFailure.invalidSmsCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidSmsCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return invalidSmsCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidSmsCode != null) {
      return invalidSmsCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return invalidSmsCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidSmsCode != null) {
      return invalidSmsCode(this);
    }
    return orElse();
  }
}

abstract class InvalidSmsCode implements AuthFailure {
  const factory InvalidSmsCode() = _$InvalidSmsCode;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<$Res> {
  factory $InvalidPhoneNumberCopyWith(
          InvalidPhoneNumber value, $Res Function(InvalidPhoneNumber) then) =
      _$InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberCopyWith<$Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber _value, $Res Function(InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber));

  @override
  InvalidPhoneNumber get _value => super._value as InvalidPhoneNumber;
}

/// @nodoc

class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements AuthFailure {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumber;
}

/// @nodoc
abstract class $UnknownErrorCopyWith<$Res> {
  factory $UnknownErrorCopyWith(
          UnknownError value, $Res Function(UnknownError) then) =
      _$UnknownErrorCopyWithImpl<$Res>;
  $Res call({FirebaseAuthException exception});
}

/// @nodoc
class _$UnknownErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnknownErrorCopyWith<$Res> {
  _$UnknownErrorCopyWithImpl(
      UnknownError _value, $Res Function(UnknownError) _then)
      : super(_value, (v) => _then(v as UnknownError));

  @override
  UnknownError get _value => super._value as UnknownError;

  @override
  $Res call({
    Object? exception = freezed,
  }) {
    return _then(UnknownError(
      exception == freezed
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as FirebaseAuthException,
    ));
  }
}

/// @nodoc

class _$UnknownError implements UnknownError {
  const _$UnknownError(this.exception);

  @override
  final FirebaseAuthException exception;

  @override
  String toString() {
    return 'AuthFailure.unknownError(exception: $exception)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnknownError &&
            (identical(other.exception, exception) ||
                const DeepCollectionEquality()
                    .equals(other.exception, exception)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exception);

  @JsonKey(ignore: true)
  @override
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      _$UnknownErrorCopyWithImpl<UnknownError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return unknownError(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements AuthFailure {
  const factory UnknownError(FirebaseAuthException exception) = _$UnknownError;

  FirebaseAuthException get exception => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnknownErrorCopyWith<UnknownError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CodeAutoRetrievalTimeoutCopyWith<$Res> {
  factory $CodeAutoRetrievalTimeoutCopyWith(CodeAutoRetrievalTimeout value,
          $Res Function(CodeAutoRetrievalTimeout) then) =
      _$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>;
}

/// @nodoc
class _$CodeAutoRetrievalTimeoutCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CodeAutoRetrievalTimeoutCopyWith<$Res> {
  _$CodeAutoRetrievalTimeoutCopyWithImpl(CodeAutoRetrievalTimeout _value,
      $Res Function(CodeAutoRetrievalTimeout) _then)
      : super(_value, (v) => _then(v as CodeAutoRetrievalTimeout));

  @override
  CodeAutoRetrievalTimeout get _value =>
      super._value as CodeAutoRetrievalTimeout;
}

/// @nodoc

class _$CodeAutoRetrievalTimeout implements CodeAutoRetrievalTimeout {
  const _$CodeAutoRetrievalTimeout();

  @override
  String toString() {
    return 'AuthFailure.codeAutoRetrievalTimeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CodeAutoRetrievalTimeout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return codeAutoRetrievalTimeout();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return codeAutoRetrievalTimeout(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (codeAutoRetrievalTimeout != null) {
      return codeAutoRetrievalTimeout(this);
    }
    return orElse();
  }
}

abstract class CodeAutoRetrievalTimeout implements AuthFailure {
  const factory CodeAutoRetrievalTimeout() = _$CodeAutoRetrievalTimeout;
}

/// @nodoc
abstract class $InvalidFullNameCopyWith<$Res> {
  factory $InvalidFullNameCopyWith(
          InvalidFullName value, $Res Function(InvalidFullName) then) =
      _$InvalidFullNameCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidFullNameCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidFullNameCopyWith<$Res> {
  _$InvalidFullNameCopyWithImpl(
      InvalidFullName _value, $Res Function(InvalidFullName) _then)
      : super(_value, (v) => _then(v as InvalidFullName));

  @override
  InvalidFullName get _value => super._value as InvalidFullName;
}

/// @nodoc

class _$InvalidFullName implements InvalidFullName {
  const _$InvalidFullName();

  @override
  String toString() {
    return 'AuthFailure.invalidFullName()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidFullName);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return invalidFullName();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidFullName != null) {
      return invalidFullName();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return invalidFullName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidFullName != null) {
      return invalidFullName(this);
    }
    return orElse();
  }
}

abstract class InvalidFullName implements AuthFailure {
  const factory InvalidFullName() = _$InvalidFullName;
}

/// @nodoc
abstract class $InvalidNicknameCopyWith<$Res> {
  factory $InvalidNicknameCopyWith(
          InvalidNickname value, $Res Function(InvalidNickname) then) =
      _$InvalidNicknameCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidNicknameCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidNicknameCopyWith<$Res> {
  _$InvalidNicknameCopyWithImpl(
      InvalidNickname _value, $Res Function(InvalidNickname) _then)
      : super(_value, (v) => _then(v as InvalidNickname));

  @override
  InvalidNickname get _value => super._value as InvalidNickname;
}

/// @nodoc

class _$InvalidNickname implements InvalidNickname {
  const _$InvalidNickname();

  @override
  String toString() {
    return 'AuthFailure.invalidNickname()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidNickname);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return invalidNickname();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidNickname != null) {
      return invalidNickname();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return invalidNickname(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidNickname != null) {
      return invalidNickname(this);
    }
    return orElse();
  }
}

abstract class InvalidNickname implements AuthFailure {
  const factory InvalidNickname() = _$InvalidNickname;
}

/// @nodoc
abstract class $InvalidVerificationIdCopyWith<$Res> {
  factory $InvalidVerificationIdCopyWith(InvalidVerificationId value,
          $Res Function(InvalidVerificationId) then) =
      _$InvalidVerificationIdCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidVerificationIdCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidVerificationIdCopyWith<$Res> {
  _$InvalidVerificationIdCopyWithImpl(
      InvalidVerificationId _value, $Res Function(InvalidVerificationId) _then)
      : super(_value, (v) => _then(v as InvalidVerificationId));

  @override
  InvalidVerificationId get _value => super._value as InvalidVerificationId;
}

/// @nodoc

class _$InvalidVerificationId implements InvalidVerificationId {
  const _$InvalidVerificationId();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationId()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidVerificationId);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return invalidVerificationId();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidVerificationId != null) {
      return invalidVerificationId();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return invalidVerificationId(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (invalidVerificationId != null) {
      return invalidVerificationId(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationId implements AuthFailure {
  const factory InvalidVerificationId() = _$InvalidVerificationId;
}

/// @nodoc
abstract class $UserNotFoundCopyWith<$Res> {
  factory $UserNotFoundCopyWith(
          UserNotFound value, $Res Function(UserNotFound) then) =
      _$UserNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserNotFoundCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UserNotFoundCopyWith<$Res> {
  _$UserNotFoundCopyWithImpl(
      UserNotFound _value, $Res Function(UserNotFound) _then)
      : super(_value, (v) => _then(v as UserNotFound));

  @override
  UserNotFound get _value => super._value as UserNotFound;
}

/// @nodoc

class _$UserNotFound implements UserNotFound {
  const _$UserNotFound();

  @override
  String toString() {
    return 'AuthFailure.userNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class UserNotFound implements AuthFailure {
  const factory UserNotFound() = _$UserNotFound;
}

/// @nodoc
abstract class $UnauthorizedCopyWith<$Res> {
  factory $UnauthorizedCopyWith(
          Unauthorized value, $Res Function(Unauthorized) then) =
      _$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(
      Unauthorized _value, $Res Function(Unauthorized) _then)
      : super(_value, (v) => _then(v as Unauthorized));

  @override
  Unauthorized get _value => super._value as Unauthorized;
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'AuthFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements AuthFailure {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class $ApplicationErrorCopyWith<$Res> {
  factory $ApplicationErrorCopyWith(
          ApplicationError value, $Res Function(ApplicationError) then) =
      _$ApplicationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApplicationErrorCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $ApplicationErrorCopyWith<$Res> {
  _$ApplicationErrorCopyWithImpl(
      ApplicationError _value, $Res Function(ApplicationError) _then)
      : super(_value, (v) => _then(v as ApplicationError));

  @override
  ApplicationError get _value => super._value as ApplicationError;
}

/// @nodoc

class _$ApplicationError implements ApplicationError {
  const _$ApplicationError();

  @override
  String toString() {
    return 'AuthFailure.applicationError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ApplicationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return applicationError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (applicationError != null) {
      return applicationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return applicationError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (applicationError != null) {
      return applicationError(this);
    }
    return orElse();
  }
}

abstract class ApplicationError implements AuthFailure {
  const factory ApplicationError() = _$ApplicationError;
}

/// @nodoc
abstract class $PhoneAlreadyUsedCopyWith<$Res> {
  factory $PhoneAlreadyUsedCopyWith(
          PhoneAlreadyUsed value, $Res Function(PhoneAlreadyUsed) then) =
      _$PhoneAlreadyUsedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PhoneAlreadyUsedCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $PhoneAlreadyUsedCopyWith<$Res> {
  _$PhoneAlreadyUsedCopyWithImpl(
      PhoneAlreadyUsed _value, $Res Function(PhoneAlreadyUsed) _then)
      : super(_value, (v) => _then(v as PhoneAlreadyUsed));

  @override
  PhoneAlreadyUsed get _value => super._value as PhoneAlreadyUsed;
}

/// @nodoc

class _$PhoneAlreadyUsed implements PhoneAlreadyUsed {
  const _$PhoneAlreadyUsed();

  @override
  String toString() {
    return 'AuthFailure.phoneAlreadyUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PhoneAlreadyUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidSmsCode,
    required TResult Function() invalidPhoneNumber,
    required TResult Function(FirebaseAuthException exception) unknownError,
    required TResult Function() codeAutoRetrievalTimeout,
    required TResult Function() invalidFullName,
    required TResult Function() invalidNickname,
    required TResult Function() invalidVerificationId,
    required TResult Function() userNotFound,
    required TResult Function() unauthorized,
    required TResult Function() applicationError,
    required TResult Function() phoneAlreadyUsed,
  }) {
    return phoneAlreadyUsed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidSmsCode,
    TResult Function()? invalidPhoneNumber,
    TResult Function(FirebaseAuthException exception)? unknownError,
    TResult Function()? codeAutoRetrievalTimeout,
    TResult Function()? invalidFullName,
    TResult Function()? invalidNickname,
    TResult Function()? invalidVerificationId,
    TResult Function()? userNotFound,
    TResult Function()? unauthorized,
    TResult Function()? applicationError,
    TResult Function()? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (phoneAlreadyUsed != null) {
      return phoneAlreadyUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidSmsCode value) invalidSmsCode,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(UnknownError value) unknownError,
    required TResult Function(CodeAutoRetrievalTimeout value)
        codeAutoRetrievalTimeout,
    required TResult Function(InvalidFullName value) invalidFullName,
    required TResult Function(InvalidNickname value) invalidNickname,
    required TResult Function(InvalidVerificationId value)
        invalidVerificationId,
    required TResult Function(UserNotFound value) userNotFound,
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ApplicationError value) applicationError,
    required TResult Function(PhoneAlreadyUsed value) phoneAlreadyUsed,
  }) {
    return phoneAlreadyUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidSmsCode value)? invalidSmsCode,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(UnknownError value)? unknownError,
    TResult Function(CodeAutoRetrievalTimeout value)? codeAutoRetrievalTimeout,
    TResult Function(InvalidFullName value)? invalidFullName,
    TResult Function(InvalidNickname value)? invalidNickname,
    TResult Function(InvalidVerificationId value)? invalidVerificationId,
    TResult Function(UserNotFound value)? userNotFound,
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ApplicationError value)? applicationError,
    TResult Function(PhoneAlreadyUsed value)? phoneAlreadyUsed,
    required TResult orElse(),
  }) {
    if (phoneAlreadyUsed != null) {
      return phoneAlreadyUsed(this);
    }
    return orElse();
  }
}

abstract class PhoneAlreadyUsed implements AuthFailure {
  const factory PhoneAlreadyUsed() = _$PhoneAlreadyUsed;
}
