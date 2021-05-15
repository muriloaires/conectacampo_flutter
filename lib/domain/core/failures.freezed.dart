// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidPhoneNumber<T> invalidPhoneNumber<T>({@required String failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidCodeLength<T> invalidCodeLength<T>({@required String failedValue}) {
    return InvalidCodeLength<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidFullName<T> invalidFullName<T>({@required String failedValue}) {
    return InvalidFullName<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  MissingSurname<T> missingSurname<T>({@required String failedValue}) {
    return MissingSurname<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidNickname<T> invalidNickname<T>({@required String failedValue}) {
    return InvalidNickname<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPhoneNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueFailure<T> {
  const factory InvalidPhoneNumber({@required String failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidCodeLengthCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidCodeLengthCopyWith(InvalidCodeLength<T> value,
          $Res Function(InvalidCodeLength<T>) then) =
      _$InvalidCodeLengthCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidCodeLengthCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCodeLengthCopyWith<T, $Res> {
  _$InvalidCodeLengthCopyWithImpl(
      InvalidCodeLength<T> _value, $Res Function(InvalidCodeLength<T>) _then)
      : super(_value, (v) => _then(v as InvalidCodeLength<T>));

  @override
  InvalidCodeLength<T> get _value => super._value as InvalidCodeLength<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCodeLength<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidCodeLength<T> implements InvalidCodeLength<T> {
  const _$InvalidCodeLength({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidCodeLength(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCodeLength<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidCodeLengthCopyWith<T, InvalidCodeLength<T>> get copyWith =>
      _$InvalidCodeLengthCopyWithImpl<T, InvalidCodeLength<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidCodeLength(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCodeLength != null) {
      return invalidCodeLength(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidCodeLength(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCodeLength != null) {
      return invalidCodeLength(this);
    }
    return orElse();
  }
}

abstract class InvalidCodeLength<T> implements ValueFailure<T> {
  const factory InvalidCodeLength({@required String failedValue}) =
      _$InvalidCodeLength<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidCodeLengthCopyWith<T, InvalidCodeLength<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidFullNameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidFullNameCopyWith(
          InvalidFullName<T> value, $Res Function(InvalidFullName<T>) then) =
      _$InvalidFullNameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidFullNameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidFullNameCopyWith<T, $Res> {
  _$InvalidFullNameCopyWithImpl(
      InvalidFullName<T> _value, $Res Function(InvalidFullName<T>) _then)
      : super(_value, (v) => _then(v as InvalidFullName<T>));

  @override
  InvalidFullName<T> get _value => super._value as InvalidFullName<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidFullName<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidFullName<T> implements InvalidFullName<T> {
  const _$InvalidFullName({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidFullName(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidFullName<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidFullNameCopyWith<T, InvalidFullName<T>> get copyWith =>
      _$InvalidFullNameCopyWithImpl<T, InvalidFullName<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidFullName(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidFullName != null) {
      return invalidFullName(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidFullName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidFullName != null) {
      return invalidFullName(this);
    }
    return orElse();
  }
}

abstract class InvalidFullName<T> implements ValueFailure<T> {
  const factory InvalidFullName({@required String failedValue}) =
      _$InvalidFullName<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidFullNameCopyWith<T, InvalidFullName<T>> get copyWith;
}

/// @nodoc
abstract class $MissingSurnameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $MissingSurnameCopyWith(
          MissingSurname<T> value, $Res Function(MissingSurname<T>) then) =
      _$MissingSurnameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$MissingSurnameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $MissingSurnameCopyWith<T, $Res> {
  _$MissingSurnameCopyWithImpl(
      MissingSurname<T> _value, $Res Function(MissingSurname<T>) _then)
      : super(_value, (v) => _then(v as MissingSurname<T>));

  @override
  MissingSurname<T> get _value => super._value as MissingSurname<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(MissingSurname<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$MissingSurname<T> implements MissingSurname<T> {
  const _$MissingSurname({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.missingSurname(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MissingSurname<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $MissingSurnameCopyWith<T, MissingSurname<T>> get copyWith =>
      _$MissingSurnameCopyWithImpl<T, MissingSurname<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return missingSurname(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingSurname != null) {
      return missingSurname(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return missingSurname(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (missingSurname != null) {
      return missingSurname(this);
    }
    return orElse();
  }
}

abstract class MissingSurname<T> implements ValueFailure<T> {
  const factory MissingSurname({@required String failedValue}) =
      _$MissingSurname<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $MissingSurnameCopyWith<T, MissingSurname<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidNicknameCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $InvalidNicknameCopyWith(
          InvalidNickname<T> value, $Res Function(InvalidNickname<T>) then) =
      _$InvalidNicknameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidNicknameCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidNicknameCopyWith<T, $Res> {
  _$InvalidNicknameCopyWithImpl(
      InvalidNickname<T> _value, $Res Function(InvalidNickname<T>) _then)
      : super(_value, (v) => _then(v as InvalidNickname<T>));

  @override
  InvalidNickname<T> get _value => super._value as InvalidNickname<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidNickname<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidNickname<T> implements InvalidNickname<T> {
  const _$InvalidNickname({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidNickname(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidNickname<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidNicknameCopyWith<T, InvalidNickname<T>> get copyWith =>
      _$InvalidNicknameCopyWithImpl<T, InvalidNickname<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidPhoneNumber(String failedValue),
    @required TResult invalidCodeLength(String failedValue),
    @required TResult invalidFullName(String failedValue),
    @required TResult missingSurname(String failedValue),
    @required TResult invalidNickname(String failedValue),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidNickname(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidPhoneNumber(String failedValue),
    TResult invalidCodeLength(String failedValue),
    TResult invalidFullName(String failedValue),
    TResult missingSurname(String failedValue),
    TResult invalidNickname(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidNickname != null) {
      return invalidNickname(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    @required TResult invalidCodeLength(InvalidCodeLength<T> value),
    @required TResult invalidFullName(InvalidFullName<T> value),
    @required TResult missingSurname(MissingSurname<T> value),
    @required TResult invalidNickname(InvalidNickname<T> value),
  }) {
    assert(invalidPhoneNumber != null);
    assert(invalidCodeLength != null);
    assert(invalidFullName != null);
    assert(missingSurname != null);
    assert(invalidNickname != null);
    return invalidNickname(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidPhoneNumber(InvalidPhoneNumber<T> value),
    TResult invalidCodeLength(InvalidCodeLength<T> value),
    TResult invalidFullName(InvalidFullName<T> value),
    TResult missingSurname(MissingSurname<T> value),
    TResult invalidNickname(InvalidNickname<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidNickname != null) {
      return invalidNickname(this);
    }
    return orElse();
  }
}

abstract class InvalidNickname<T> implements ValueFailure<T> {
  const factory InvalidNickname({@required String failedValue}) =
      _$InvalidNickname<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidNicknameCopyWith<T, InvalidNickname<T>> get copyWith;
}
