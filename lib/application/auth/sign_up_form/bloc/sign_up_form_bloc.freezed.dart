// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sign_up_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpFormBlocEventTearOff {
  const _$SignUpFormBlocEventTearOff();

  FullNameChanged fullNameChanged(String fullName) {
    return FullNameChanged(
      fullName,
    );
  }

  NicknameChanged nicknameChanged(String nickname) {
    return NicknameChanged(
      nickname,
    );
  }

  PlaceChosen placeChosen(Unit? success) {
    return PlaceChosen(
      success,
    );
  }

  BtnSignUpPressed btnSignUpPressed() {
    return const BtnSignUpPressed();
  }
}

/// @nodoc
const $SignUpFormBlocEvent = _$SignUpFormBlocEventTearOff();

/// @nodoc
mixin _$SignUpFormBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(Unit? success) placeChosen,
    required TResult Function() btnSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(Unit? success)? placeChosen,
    TResult Function()? btnSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(PlaceChosen value) placeChosen,
    required TResult Function(BtnSignUpPressed value) btnSignUpPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(PlaceChosen value)? placeChosen,
    TResult Function(BtnSignUpPressed value)? btnSignUpPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
    Object? fullName = freezed,
  }) {
    return _then(FullNameChanged(
      fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChanged implements FullNameChanged {
  const _$FullNameChanged(this.fullName);

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
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(Unit? success) placeChosen,
    required TResult Function() btnSignUpPressed,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(Unit? success)? placeChosen,
    TResult Function()? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(PlaceChosen value) placeChosen,
    required TResult Function(BtnSignUpPressed value) btnSignUpPressed,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(PlaceChosen value)? placeChosen,
    TResult Function(BtnSignUpPressed value)? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements SignUpFormBlocEvent {
  const factory FullNameChanged(String fullName) = _$FullNameChanged;

  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? nickname = freezed,
  }) {
    return _then(NicknameChanged(
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NicknameChanged implements NicknameChanged {
  const _$NicknameChanged(this.nickname);

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
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(Unit? success) placeChosen,
    required TResult Function() btnSignUpPressed,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(Unit? success)? placeChosen,
    TResult Function()? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(nickname);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(PlaceChosen value) placeChosen,
    required TResult Function(BtnSignUpPressed value) btnSignUpPressed,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(PlaceChosen value)? placeChosen,
    TResult Function(BtnSignUpPressed value)? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class NicknameChanged implements SignUpFormBlocEvent {
  const factory NicknameChanged(String nickname) = _$NicknameChanged;

  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NicknameChangedCopyWith<NicknameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceChosenCopyWith<$Res> {
  factory $PlaceChosenCopyWith(
          PlaceChosen value, $Res Function(PlaceChosen) then) =
      _$PlaceChosenCopyWithImpl<$Res>;
  $Res call({Unit? success});
}

/// @nodoc
class _$PlaceChosenCopyWithImpl<$Res>
    extends _$SignUpFormBlocEventCopyWithImpl<$Res>
    implements $PlaceChosenCopyWith<$Res> {
  _$PlaceChosenCopyWithImpl(
      PlaceChosen _value, $Res Function(PlaceChosen) _then)
      : super(_value, (v) => _then(v as PlaceChosen));

  @override
  PlaceChosen get _value => super._value as PlaceChosen;

  @override
  $Res call({
    Object? success = freezed,
  }) {
    return _then(PlaceChosen(
      success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as Unit?,
    ));
  }
}

/// @nodoc

class _$PlaceChosen implements PlaceChosen {
  const _$PlaceChosen(this.success);

  @override
  final Unit? success;

  @override
  String toString() {
    return 'SignUpFormBlocEvent.placeChosen(success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceChosen &&
            (identical(other.success, success) ||
                const DeepCollectionEquality().equals(other.success, success)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(success);

  @JsonKey(ignore: true)
  @override
  $PlaceChosenCopyWith<PlaceChosen> get copyWith =>
      _$PlaceChosenCopyWithImpl<PlaceChosen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(Unit? success) placeChosen,
    required TResult Function() btnSignUpPressed,
  }) {
    return placeChosen(success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(Unit? success)? placeChosen,
    TResult Function()? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (placeChosen != null) {
      return placeChosen(success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(PlaceChosen value) placeChosen,
    required TResult Function(BtnSignUpPressed value) btnSignUpPressed,
  }) {
    return placeChosen(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(PlaceChosen value)? placeChosen,
    TResult Function(BtnSignUpPressed value)? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (placeChosen != null) {
      return placeChosen(this);
    }
    return orElse();
  }
}

abstract class PlaceChosen implements SignUpFormBlocEvent {
  const factory PlaceChosen(Unit? success) = _$PlaceChosen;

  Unit? get success => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceChosenCopyWith<PlaceChosen> get copyWith =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(Unit? success) placeChosen,
    required TResult Function() btnSignUpPressed,
  }) {
    return btnSignUpPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(Unit? success)? placeChosen,
    TResult Function()? btnSignUpPressed,
    required TResult orElse(),
  }) {
    if (btnSignUpPressed != null) {
      return btnSignUpPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(PlaceChosen value) placeChosen,
    required TResult Function(BtnSignUpPressed value) btnSignUpPressed,
  }) {
    return btnSignUpPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(PlaceChosen value)? placeChosen,
    TResult Function(BtnSignUpPressed value)? btnSignUpPressed,
    required TResult orElse(),
  }) {
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

  _SignUpFormBlocState call(
      bool isSubmitting,
      FullName fullName,
      Nickname nickname,
      bool showErrorMessages,
      bool navigateNext,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption) {
    return _SignUpFormBlocState(
      isSubmitting,
      fullName,
      nickname,
      showErrorMessages,
      navigateNext,
      authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SignUpFormBlocState = _$SignUpFormBlocStateTearOff();

/// @nodoc
mixin _$SignUpFormBlocState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  FullName get fullName => throw _privateConstructorUsedError;
  Nickname get nickname => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get navigateNext => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpFormBlocStateCopyWith<SignUpFormBlocState> get copyWith =>
      throw _privateConstructorUsedError;
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
      bool navigateNext,
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
    Object? isSubmitting = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? showErrorMessages = freezed,
    Object? navigateNext = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateNext: navigateNext == freezed
          ? _value.navigateNext
          : navigateNext // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
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
      bool navigateNext,
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
    Object? isSubmitting = freezed,
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? showErrorMessages = freezed,
    Object? navigateNext = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignUpFormBlocState(
      isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
      showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      navigateNext == freezed
          ? _value.navigateNext
          : navigateNext // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignUpFormBlocState implements _SignUpFormBlocState {
  const _$_SignUpFormBlocState(
      this.isSubmitting,
      this.fullName,
      this.nickname,
      this.showErrorMessages,
      this.navigateNext,
      this.authFailureOrSuccessOption);

  @override
  final bool isSubmitting;
  @override
  final FullName fullName;
  @override
  final Nickname nickname;
  @override
  final bool showErrorMessages;
  @override
  final bool navigateNext;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignUpFormBlocState(isSubmitting: $isSubmitting, fullName: $fullName, nickname: $nickname, showErrorMessages: $showErrorMessages, navigateNext: $navigateNext, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
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
            (identical(other.navigateNext, navigateNext) ||
                const DeepCollectionEquality()
                    .equals(other.navigateNext, navigateNext)) &&
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
      const DeepCollectionEquality().hash(navigateNext) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignUpFormBlocStateCopyWith<_SignUpFormBlocState> get copyWith =>
      __$SignUpFormBlocStateCopyWithImpl<_SignUpFormBlocState>(
          this, _$identity);
}

abstract class _SignUpFormBlocState implements SignUpFormBlocState {
  const factory _SignUpFormBlocState(
          bool isSubmitting,
          FullName fullName,
          Nickname nickname,
          bool showErrorMessages,
          bool navigateNext,
          Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption) =
      _$_SignUpFormBlocState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  Nickname get nickname => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get navigateNext => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignUpFormBlocStateCopyWith<_SignUpFormBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
