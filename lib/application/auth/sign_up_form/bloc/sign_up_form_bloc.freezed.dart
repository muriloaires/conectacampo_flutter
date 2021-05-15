// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignUpFormBlocEventTearOff {
  const _$SignUpFormBlocEventTearOff();

// ignore: unused_element
  FullNameChanged fullNameChanged(String fullName) {
    return FullNameChanged(
      fullName,
    );
  }

// ignore: unused_element
  NicknameChanged nicknameChanged(String nickname) {
    return NicknameChanged(
      nickname,
    );
  }

// ignore: unused_element
  BtnSignUpPressed btnSignUpPressed() {
    return const BtnSignUpPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormBlocEvent = _$SignUpFormBlocEventTearOff();

/// @nodoc
mixin _$SignUpFormBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult nicknameChanged(String nickname),
    @required TResult btnSignUpPressed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult nicknameChanged(String nickname),
    TResult btnSignUpPressed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChanged value),
    @required TResult nicknameChanged(NicknameChanged value),
    @required TResult btnSignUpPressed(BtnSignUpPressed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChanged value),
    TResult nicknameChanged(NicknameChanged value),
    TResult btnSignUpPressed(BtnSignUpPressed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SignUpFormBlocEventCopyWith<$Res> {
  factory $SignUpFormBlocEventCopyWith(
          SignUpFormBlocEvent value, $Res Function(SignUpFormBlocEvent) then) =
      _$SignUpFormBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpFormBlocEventCopyWithImpl<$Res>
    implements $SignUpFormBlocEventCopyWith<$Res> {
  _$SignUpFormBlocEventCopyWithImpl(this._value, this._then);

  final SignUpFormBlocEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpFormBlocEvent) _then;
}

/// @nodoc
abstract class $FullNameChangedCopyWith<$Res> {
  factory $FullNameChangedCopyWith(
          FullNameChanged value, $Res Function(FullNameChanged) then) =
      _$FullNameChangedCopyWithImpl<$Res>;
  $Res call({String fullName});
}

/// @nodoc
class _$FullNameChangedCopyWithImpl<$Res>
    extends _$SignUpFormBlocEventCopyWithImpl<$Res>
    implements $FullNameChangedCopyWith<$Res> {
  _$FullNameChangedCopyWithImpl(
      FullNameChanged _value, $Res Function(FullNameChanged) _then)
      : super(_value, (v) => _then(v as FullNameChanged));

  @override
  FullNameChanged get _value => super._value as FullNameChanged;

  @override
  $Res call({
    Object fullName = freezed,
  }) {
    return _then(FullNameChanged(
      fullName == freezed ? _value.fullName : fullName as String,
    ));
  }
}

/// @nodoc
class _$FullNameChanged implements FullNameChanged {
  const _$FullNameChanged(this.fullName) : assert(fullName != null);

  @override
  final String fullName;

  @override
  String toString() {
    return 'SignUpFormBlocEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FullNameChanged &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(fullName);

  @JsonKey(ignore: true)
  @override
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      _$FullNameChangedCopyWithImpl<FullNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult nicknameChanged(String nickname),
    @required TResult btnSignUpPressed(),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult nicknameChanged(String nickname),
    TResult btnSignUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChanged value),
    @required TResult nicknameChanged(NicknameChanged value),
    @required TResult btnSignUpPressed(BtnSignUpPressed value),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChanged value),
    TResult nicknameChanged(NicknameChanged value),
    TResult btnSignUpPressed(BtnSignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements SignUpFormBlocEvent {
  const factory FullNameChanged(String fullName) = _$FullNameChanged;

  String get fullName;
  @JsonKey(ignore: true)
  $FullNameChangedCopyWith<FullNameChanged> get copyWith;
}

/// @nodoc
abstract class $NicknameChangedCopyWith<$Res> {
  factory $NicknameChangedCopyWith(
          NicknameChanged value, $Res Function(NicknameChanged) then) =
      _$NicknameChangedCopyWithImpl<$Res>;
  $Res call({String nickname});
}

/// @nodoc
class _$NicknameChangedCopyWithImpl<$Res>
    extends _$SignUpFormBlocEventCopyWithImpl<$Res>
    implements $NicknameChangedCopyWith<$Res> {
  _$NicknameChangedCopyWithImpl(
      NicknameChanged _value, $Res Function(NicknameChanged) _then)
      : super(_value, (v) => _then(v as NicknameChanged));

  @override
  NicknameChanged get _value => super._value as NicknameChanged;

  @override
  $Res call({
    Object nickname = freezed,
  }) {
    return _then(NicknameChanged(
      nickname == freezed ? _value.nickname : nickname as String,
    ));
  }
}

/// @nodoc
class _$NicknameChanged implements NicknameChanged {
  const _$NicknameChanged(this.nickname) : assert(nickname != null);

  @override
  final String nickname;

  @override
  String toString() {
    return 'SignUpFormBlocEvent.nicknameChanged(nickname: $nickname)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NicknameChanged &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nickname);

  @JsonKey(ignore: true)
  @override
  $NicknameChangedCopyWith<NicknameChanged> get copyWith =>
      _$NicknameChangedCopyWithImpl<NicknameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult nicknameChanged(String nickname),
    @required TResult btnSignUpPressed(),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult nicknameChanged(String nickname),
    TResult btnSignUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChanged value),
    @required TResult nicknameChanged(NicknameChanged value),
    @required TResult btnSignUpPressed(BtnSignUpPressed value),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChanged value),
    TResult nicknameChanged(NicknameChanged value),
    TResult btnSignUpPressed(BtnSignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class NicknameChanged implements SignUpFormBlocEvent {
  const factory NicknameChanged(String nickname) = _$NicknameChanged;

  String get nickname;
  @JsonKey(ignore: true)
  $NicknameChangedCopyWith<NicknameChanged> get copyWith;
}

/// @nodoc
abstract class $BtnSignUpPressedCopyWith<$Res> {
  factory $BtnSignUpPressedCopyWith(
          BtnSignUpPressed value, $Res Function(BtnSignUpPressed) then) =
      _$BtnSignUpPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$BtnSignUpPressedCopyWithImpl<$Res>
    extends _$SignUpFormBlocEventCopyWithImpl<$Res>
    implements $BtnSignUpPressedCopyWith<$Res> {
  _$BtnSignUpPressedCopyWithImpl(
      BtnSignUpPressed _value, $Res Function(BtnSignUpPressed) _then)
      : super(_value, (v) => _then(v as BtnSignUpPressed));

  @override
  BtnSignUpPressed get _value => super._value as BtnSignUpPressed;
}

/// @nodoc
class _$BtnSignUpPressed implements BtnSignUpPressed {
  const _$BtnSignUpPressed();

  @override
  String toString() {
    return 'SignUpFormBlocEvent.btnSignUpPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BtnSignUpPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult fullNameChanged(String fullName),
    @required TResult nicknameChanged(String nickname),
    @required TResult btnSignUpPressed(),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return btnSignUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult fullNameChanged(String fullName),
    TResult nicknameChanged(String nickname),
    TResult btnSignUpPressed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (btnSignUpPressed != null) {
      return btnSignUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult fullNameChanged(FullNameChanged value),
    @required TResult nicknameChanged(NicknameChanged value),
    @required TResult btnSignUpPressed(BtnSignUpPressed value),
  }) {
    assert(fullNameChanged != null);
    assert(nicknameChanged != null);
    assert(btnSignUpPressed != null);
    return btnSignUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult fullNameChanged(FullNameChanged value),
    TResult nicknameChanged(NicknameChanged value),
    TResult btnSignUpPressed(BtnSignUpPressed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (btnSignUpPressed != null) {
      return btnSignUpPressed(this);
    }
    return orElse();
  }
}

abstract class BtnSignUpPressed implements SignUpFormBlocEvent {
  const factory BtnSignUpPressed() = _$BtnSignUpPressed;
}

/// @nodoc
class _$SignUpFormBlocStateTearOff {
  const _$SignUpFormBlocStateTearOff();

// ignore: unused_element
  _SignUpFormBlocState call(
      {@required bool isSubmitting,
      @required FullName fullName,
      @required Nickname nickname,
      @required bool showErrorMessages,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _SignUpFormBlocState(
      isSubmitting: isSubmitting,
      fullName: fullName,
      nickname: nickname,
      showErrorMessages: showErrorMessages,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignUpFormBlocState = _$SignUpFormBlocStateTearOff();

/// @nodoc
mixin _$SignUpFormBlocState {
  bool get isSubmitting;
  FullName get fullName;
  Nickname get nickname;
  bool get showErrorMessages;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $SignUpFormBlocStateCopyWith<SignUpFormBlocState> get copyWith;
}

/// @nodoc
abstract class $SignUpFormBlocStateCopyWith<$Res> {
  factory $SignUpFormBlocStateCopyWith(
          SignUpFormBlocState value, $Res Function(SignUpFormBlocState) then) =
      _$SignUpFormBlocStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting,
      FullName fullName,
      Nickname nickname,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignUpFormBlocStateCopyWithImpl<$Res>
    implements $SignUpFormBlocStateCopyWith<$Res> {
  _$SignUpFormBlocStateCopyWithImpl(this._value, this._then);

  final SignUpFormBlocState _value;
  // ignore: unused_field
  final $Res Function(SignUpFormBlocState) _then;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object fullName = freezed,
    Object nickname = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      nickname: nickname == freezed ? _value.nickname : nickname as Nickname,
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
abstract class _$SignUpFormBlocStateCopyWith<$Res>
    implements $SignUpFormBlocStateCopyWith<$Res> {
  factory _$SignUpFormBlocStateCopyWith(_SignUpFormBlocState value,
          $Res Function(_SignUpFormBlocState) then) =
      __$SignUpFormBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting,
      FullName fullName,
      Nickname nickname,
      bool showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignUpFormBlocStateCopyWithImpl<$Res>
    extends _$SignUpFormBlocStateCopyWithImpl<$Res>
    implements _$SignUpFormBlocStateCopyWith<$Res> {
  __$SignUpFormBlocStateCopyWithImpl(
      _SignUpFormBlocState _value, $Res Function(_SignUpFormBlocState) _then)
      : super(_value, (v) => _then(v as _SignUpFormBlocState));

  @override
  _SignUpFormBlocState get _value => super._value as _SignUpFormBlocState;

  @override
  $Res call({
    Object isSubmitting = freezed,
    Object fullName = freezed,
    Object nickname = freezed,
    Object showErrorMessages = freezed,
    Object authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormBlocState(
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      fullName: fullName == freezed ? _value.fullName : fullName as FullName,
      nickname: nickname == freezed ? _value.nickname : nickname as Nickname,
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
class _$_SignUpFormBlocState implements _SignUpFormBlocState {
  const _$_SignUpFormBlocState(
      {@required this.isSubmitting,
      @required this.fullName,
      @required this.nickname,
      @required this.showErrorMessages,
      @required this.authFailureOrSuccessOption})
      : assert(isSubmitting != null),
        assert(fullName != null),
        assert(nickname != null),
        assert(showErrorMessages != null),
        assert(authFailureOrSuccessOption != null);

  @override
  final bool isSubmitting;
  @override
  final FullName fullName;
  @override
  final Nickname nickname;
  @override
  final bool showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormBlocState(isSubmitting: $isSubmitting, fullName: $fullName, nickname: $nickname, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignUpFormBlocState &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
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
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormBlocStateCopyWith<_SignUpFormBlocState> get copyWith =>
      __$SignUpFormBlocStateCopyWithImpl<_SignUpFormBlocState>(
          this, _$identity);
}

abstract class _SignUpFormBlocState implements SignUpFormBlocState {
  const factory _SignUpFormBlocState(
          {@required
              bool isSubmitting,
          @required
              FullName fullName,
          @required
              Nickname nickname,
          @required
              bool showErrorMessages,
          @required
              Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) =
      _$_SignUpFormBlocState;

  @override
  bool get isSubmitting;
  @override
  FullName get fullName;
  @override
  Nickname get nickname;
  @override
  bool get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormBlocStateCopyWith<_SignUpFormBlocState> get copyWith;
}
