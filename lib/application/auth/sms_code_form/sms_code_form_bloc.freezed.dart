// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sms_code_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SmsCodeFormEventTearOff {
  const _$SmsCodeFormEventTearOff();

// ignore: unused_element
  SmsCodeChanged smsCodeChanged(String smsCode) {
    return SmsCodeChanged(
      smsCode,
    );
  }

// ignore: unused_element
  ResendCode resendCode() {
    return const ResendCode();
  }

// ignore: unused_element
  VerifyCode verifyCodePressed() {
    return const VerifyCode();
  }
}

/// @nodoc
// ignore: unused_element
const $SmsCodeFormEvent = _$SmsCodeFormEventTearOff();

/// @nodoc
mixin _$SmsCodeFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult smsCodeChanged(String smsCode),
    @required TResult resendCode(),
    @required TResult verifyCodePressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult smsCodeChanged(String smsCode),
    TResult resendCode(),
    TResult verifyCodePressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult smsCodeChanged(SmsCodeChanged value),
    @required TResult resendCode(ResendCode value),
    @required TResult verifyCodePressed(VerifyCode value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult smsCodeChanged(SmsCodeChanged value),
    TResult resendCode(ResendCode value),
    TResult verifyCodePressed(VerifyCode value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SmsCodeFormEventCopyWith<$Res> {
  factory $SmsCodeFormEventCopyWith(
          SmsCodeFormEvent value, $Res Function(SmsCodeFormEvent) then) =
      _$SmsCodeFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SmsCodeFormEventCopyWithImpl<$Res>
    implements $SmsCodeFormEventCopyWith<$Res> {
  _$SmsCodeFormEventCopyWithImpl(this._value, this._then);

  final SmsCodeFormEvent _value;
  // ignore: unused_field
  final $Res Function(SmsCodeFormEvent) _then;
}

/// @nodoc
abstract class $SmsCodeChangedCopyWith<$Res> {
  factory $SmsCodeChangedCopyWith(
          SmsCodeChanged value, $Res Function(SmsCodeChanged) then) =
      _$SmsCodeChangedCopyWithImpl<$Res>;
  $Res call({String smsCode});
}

/// @nodoc
class _$SmsCodeChangedCopyWithImpl<$Res>
    extends _$SmsCodeFormEventCopyWithImpl<$Res>
    implements $SmsCodeChangedCopyWith<$Res> {
  _$SmsCodeChangedCopyWithImpl(
      SmsCodeChanged _value, $Res Function(SmsCodeChanged) _then)
      : super(_value, (v) => _then(v as SmsCodeChanged));

  @override
  SmsCodeChanged get _value => super._value as SmsCodeChanged;

  @override
  $Res call({
    Object smsCode = freezed,
  }) {
    return _then(SmsCodeChanged(
      smsCode == freezed ? _value.smsCode : smsCode as String,
    ));
  }
}

/// @nodoc
class _$SmsCodeChanged implements SmsCodeChanged {
  const _$SmsCodeChanged(this.smsCode) : assert(smsCode != null);

  @override
  final String smsCode;

  @override
  String toString() {
    return 'SmsCodeFormEvent.smsCodeChanged(smsCode: $smsCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SmsCodeChanged &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality().equals(other.smsCode, smsCode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(smsCode);

  @JsonKey(ignore: true)
  @override
  $SmsCodeChangedCopyWith<SmsCodeChanged> get copyWith =>
      _$SmsCodeChangedCopyWithImpl<SmsCodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult smsCodeChanged(String smsCode),
    @required TResult resendCode(),
    @required TResult verifyCodePressed(),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return smsCodeChanged(smsCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult smsCodeChanged(String smsCode),
    TResult resendCode(),
    TResult verifyCodePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (smsCodeChanged != null) {
      return smsCodeChanged(smsCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult smsCodeChanged(SmsCodeChanged value),
    @required TResult resendCode(ResendCode value),
    @required TResult verifyCodePressed(VerifyCode value),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return smsCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult smsCodeChanged(SmsCodeChanged value),
    TResult resendCode(ResendCode value),
    TResult verifyCodePressed(VerifyCode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (smsCodeChanged != null) {
      return smsCodeChanged(this);
    }
    return orElse();
  }
}

abstract class SmsCodeChanged implements SmsCodeFormEvent {
  const factory SmsCodeChanged(String smsCode) = _$SmsCodeChanged;

  String get smsCode;
  @JsonKey(ignore: true)
  $SmsCodeChangedCopyWith<SmsCodeChanged> get copyWith;
}

/// @nodoc
abstract class $ResendCodeCopyWith<$Res> {
  factory $ResendCodeCopyWith(
          ResendCode value, $Res Function(ResendCode) then) =
      _$ResendCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResendCodeCopyWithImpl<$Res>
    extends _$SmsCodeFormEventCopyWithImpl<$Res>
    implements $ResendCodeCopyWith<$Res> {
  _$ResendCodeCopyWithImpl(ResendCode _value, $Res Function(ResendCode) _then)
      : super(_value, (v) => _then(v as ResendCode));

  @override
  ResendCode get _value => super._value as ResendCode;
}

/// @nodoc
class _$ResendCode implements ResendCode {
  const _$ResendCode();

  @override
  String toString() {
    return 'SmsCodeFormEvent.resendCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResendCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult smsCodeChanged(String smsCode),
    @required TResult resendCode(),
    @required TResult verifyCodePressed(),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return resendCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult smsCodeChanged(String smsCode),
    TResult resendCode(),
    TResult verifyCodePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendCode != null) {
      return resendCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult smsCodeChanged(SmsCodeChanged value),
    @required TResult resendCode(ResendCode value),
    @required TResult verifyCodePressed(VerifyCode value),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return resendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult smsCodeChanged(SmsCodeChanged value),
    TResult resendCode(ResendCode value),
    TResult verifyCodePressed(VerifyCode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (resendCode != null) {
      return resendCode(this);
    }
    return orElse();
  }
}

abstract class ResendCode implements SmsCodeFormEvent {
  const factory ResendCode() = _$ResendCode;
}

/// @nodoc
abstract class $VerifyCodeCopyWith<$Res> {
  factory $VerifyCodeCopyWith(
          VerifyCode value, $Res Function(VerifyCode) then) =
      _$VerifyCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerifyCodeCopyWithImpl<$Res>
    extends _$SmsCodeFormEventCopyWithImpl<$Res>
    implements $VerifyCodeCopyWith<$Res> {
  _$VerifyCodeCopyWithImpl(VerifyCode _value, $Res Function(VerifyCode) _then)
      : super(_value, (v) => _then(v as VerifyCode));

  @override
  VerifyCode get _value => super._value as VerifyCode;
}

/// @nodoc
class _$VerifyCode implements VerifyCode {
  const _$VerifyCode();

  @override
  String toString() {
    return 'SmsCodeFormEvent.verifyCodePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is VerifyCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult smsCodeChanged(String smsCode),
    @required TResult resendCode(),
    @required TResult verifyCodePressed(),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return verifyCodePressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult smsCodeChanged(String smsCode),
    TResult resendCode(),
    TResult verifyCodePressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyCodePressed != null) {
      return verifyCodePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult smsCodeChanged(SmsCodeChanged value),
    @required TResult resendCode(ResendCode value),
    @required TResult verifyCodePressed(VerifyCode value),
  }) {
    assert(smsCodeChanged != null);
    assert(resendCode != null);
    assert(verifyCodePressed != null);
    return verifyCodePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult smsCodeChanged(SmsCodeChanged value),
    TResult resendCode(ResendCode value),
    TResult verifyCodePressed(VerifyCode value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (verifyCodePressed != null) {
      return verifyCodePressed(this);
    }
    return orElse();
  }
}

abstract class VerifyCode implements SmsCodeFormEvent {
  const factory VerifyCode() = _$VerifyCode;
}

/// @nodoc
class _$SmsCodeFormStateTearOff {
  const _$SmsCodeFormStateTearOff();

// ignore: unused_element
  _SmsCodeFormState call(
      {@required SmsCode smsCode,
      @required bool isSubmitting,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SmsCodeFormState(
      smsCode: smsCode,
      isSubmitting: isSubmitting,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SmsCodeFormState = _$SmsCodeFormStateTearOff();

/// @nodoc
mixin _$SmsCodeFormState {
  SmsCode get smsCode;
  bool get isSubmitting;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SmsCodeFormStateCopyWith<SmsCodeFormState> get copyWith;
}

/// @nodoc
abstract class $SmsCodeFormStateCopyWith<$Res> {
  factory $SmsCodeFormStateCopyWith(
          SmsCodeFormState value, $Res Function(SmsCodeFormState) then) =
      _$SmsCodeFormStateCopyWithImpl<$Res>;
  $Res call(
      {SmsCode smsCode,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SmsCodeFormStateCopyWithImpl<$Res>
    implements $SmsCodeFormStateCopyWith<$Res> {
  _$SmsCodeFormStateCopyWithImpl(this._value, this._then);

  final SmsCodeFormState _value;
  // ignore: unused_field
  final $Res Function(SmsCodeFormState) _then;

  @override
  $Res call({
    Object smsCode = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      smsCode: smsCode == freezed ? _value.smsCode : smsCode as SmsCode,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SmsCodeFormStateCopyWith<$Res>
    implements $SmsCodeFormStateCopyWith<$Res> {
  factory _$SmsCodeFormStateCopyWith(
          _SmsCodeFormState value, $Res Function(_SmsCodeFormState) then) =
      __$SmsCodeFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {SmsCode smsCode,
      bool isSubmitting,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SmsCodeFormStateCopyWithImpl<$Res>
    extends _$SmsCodeFormStateCopyWithImpl<$Res>
    implements _$SmsCodeFormStateCopyWith<$Res> {
  __$SmsCodeFormStateCopyWithImpl(
      _SmsCodeFormState _value, $Res Function(_SmsCodeFormState) _then)
      : super(_value, (v) => _then(v as _SmsCodeFormState));

  @override
  _SmsCodeFormState get _value => super._value as _SmsCodeFormState;

  @override
  $Res call({
    Object smsCode = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SmsCodeFormState(
      smsCode: smsCode == freezed ? _value.smsCode : smsCode as SmsCode,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_SmsCodeFormState implements _SmsCodeFormState {
  const _$_SmsCodeFormState(
      {@required this.smsCode,
      @required this.isSubmitting,
      @required this.showErrorMessages,
      @required this.authFailureOrSuccessOption})
      : assert(smsCode != null),
        assert(isSubmitting != null),
        assert(showErrorMessages != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final SmsCode smsCode;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SmsCodeFormState(smsCode: $smsCode, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SmsCodeFormState &&
            (identical(other.smsCode, smsCode) ||
                const DeepCollectionEquality()
                    .equals(other.smsCode, smsCode)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(smsCode) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SmsCodeFormStateCopyWith<_SmsCodeFormState> get copyWith =>
      __$SmsCodeFormStateCopyWithImpl<_SmsCodeFormState>(this, _$identity);
}

abstract class _SmsCodeFormState implements SmsCodeFormState {
  const factory _SmsCodeFormState(
          {@required
              SmsCode smsCode,
          @required
              bool isSubmitting,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SmsCodeFormState;

  @override
  SmsCode get smsCode;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SmsCodeFormStateCopyWith<_SmsCodeFormState> get copyWith;
}
