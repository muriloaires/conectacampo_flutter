// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditProfileEventTearOff {
  const _$EditProfileEventTearOff();

  _Started started() {
    return const _Started();
  }

  FloatingActionButtonPressed floatingActionButtonPressed() {
    return const FloatingActionButtonPressed();
  }

  NicknameChanged nicknameChanged(String nickname) {
    return NicknameChanged(
      nickname,
    );
  }

  FullNameChanged fullNameChanged(String fullName) {
    return FullNameChanged(
      fullName,
    );
  }

  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }
}

/// @nodoc
const $EditProfileEvent = _$EditProfileEventTearOff();

/// @nodoc
mixin _$EditProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileEventCopyWith<$Res> {
  factory $EditProfileEventCopyWith(
          EditProfileEvent value, $Res Function(EditProfileEvent) then) =
      _$EditProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileEventCopyWithImpl<$Res>
    implements $EditProfileEventCopyWith<$Res> {
  _$EditProfileEventCopyWithImpl(this._value, this._then);

  final EditProfileEvent _value;
  // ignore: unused_field
  final $Res Function(EditProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$EditProfileEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'EditProfileEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EditProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $FloatingActionButtonPressedCopyWith<$Res> {
  factory $FloatingActionButtonPressedCopyWith(
          FloatingActionButtonPressed value,
          $Res Function(FloatingActionButtonPressed) then) =
      _$FloatingActionButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FloatingActionButtonPressedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $FloatingActionButtonPressedCopyWith<$Res> {
  _$FloatingActionButtonPressedCopyWithImpl(FloatingActionButtonPressed _value,
      $Res Function(FloatingActionButtonPressed) _then)
      : super(_value, (v) => _then(v as FloatingActionButtonPressed));

  @override
  FloatingActionButtonPressed get _value =>
      super._value as FloatingActionButtonPressed;
}

/// @nodoc

class _$FloatingActionButtonPressed implements FloatingActionButtonPressed {
  const _$FloatingActionButtonPressed();

  @override
  String toString() {
    return 'EditProfileEvent.floatingActionButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FloatingActionButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) {
    return floatingActionButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (floatingActionButtonPressed != null) {
      return floatingActionButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) {
    return floatingActionButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (floatingActionButtonPressed != null) {
      return floatingActionButtonPressed(this);
    }
    return orElse();
  }
}

abstract class FloatingActionButtonPressed implements EditProfileEvent {
  const factory FloatingActionButtonPressed() = _$FloatingActionButtonPressed;
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
    extends _$EditProfileEventCopyWithImpl<$Res>
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
  _$NicknameChanged(this.nickname);

  @override
  final String nickname;

  @override
  String toString() {
    return 'EditProfileEvent.nicknameChanged(nickname: $nickname)';
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
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) {
    return nicknameChanged(nickname);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) {
    return nicknameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (nicknameChanged != null) {
      return nicknameChanged(this);
    }
    return orElse();
  }
}

abstract class NicknameChanged implements EditProfileEvent {
  factory NicknameChanged(String nickname) = _$NicknameChanged;

  String get nickname => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NicknameChangedCopyWith<NicknameChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$EditProfileEventCopyWithImpl<$Res>
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
  _$FullNameChanged(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'EditProfileEvent.fullNameChanged(fullName: $fullName)';
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
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class FullNameChanged implements EditProfileEvent {
  factory FullNameChanged(String fullName) = _$FullNameChanged;

  String get fullName => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullNameChangedCopyWith<FullNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$EditProfileEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  _$EmailChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'EditProfileEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() floatingActionButtonPressed,
    required TResult Function(String nickname) nicknameChanged,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String email) emailChanged,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? floatingActionButtonPressed,
    TResult Function(String nickname)? nicknameChanged,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String email)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FloatingActionButtonPressed value)
        floatingActionButtonPressed,
    required TResult Function(NicknameChanged value) nicknameChanged,
    required TResult Function(FullNameChanged value) fullNameChanged,
    required TResult Function(EmailChanged value) emailChanged,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FloatingActionButtonPressed value)?
        floatingActionButtonPressed,
    TResult Function(NicknameChanged value)? nicknameChanged,
    TResult Function(FullNameChanged value)? fullNameChanged,
    TResult Function(EmailChanged value)? emailChanged,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements EditProfileEvent {
  factory EmailChanged(String email) = _$EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditProfileStateTearOff {
  const _$EditProfileStateTearOff();

  _EditProfileState call(
      {required FullName fullName,
      required Nickname nickname,
      required Email email,
      required bool showProgress,
      required Either<AuthFailure, User>? userUpdateSuccessOrFailure}) {
    return _EditProfileState(
      fullName: fullName,
      nickname: nickname,
      email: email,
      showProgress: showProgress,
      userUpdateSuccessOrFailure: userUpdateSuccessOrFailure,
    );
  }
}

/// @nodoc
const $EditProfileState = _$EditProfileStateTearOff();

/// @nodoc
mixin _$EditProfileState {
  FullName get fullName => throw _privateConstructorUsedError;
  Nickname get nickname => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  bool get showProgress => throw _privateConstructorUsedError;
  Either<AuthFailure, User>? get userUpdateSuccessOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
  $Res call(
      {FullName fullName,
      Nickname nickname,
      Email email,
      bool showProgress,
      Either<AuthFailure, User>? userUpdateSuccessOrFailure});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? email = freezed,
    Object? showProgress = freezed,
    Object? userUpdateSuccessOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      showProgress: showProgress == freezed
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userUpdateSuccessOrFailure: userUpdateSuccessOrFailure == freezed
          ? _value.userUpdateSuccessOrFailure
          : userUpdateSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, User>?,
    ));
  }
}

/// @nodoc
abstract class _$EditProfileStateCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$EditProfileStateCopyWith(
          _EditProfileState value, $Res Function(_EditProfileState) then) =
      __$EditProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FullName fullName,
      Nickname nickname,
      Email email,
      bool showProgress,
      Either<AuthFailure, User>? userUpdateSuccessOrFailure});
}

/// @nodoc
class __$EditProfileStateCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$EditProfileStateCopyWith<$Res> {
  __$EditProfileStateCopyWithImpl(
      _EditProfileState _value, $Res Function(_EditProfileState) _then)
      : super(_value, (v) => _then(v as _EditProfileState));

  @override
  _EditProfileState get _value => super._value as _EditProfileState;

  @override
  $Res call({
    Object? fullName = freezed,
    Object? nickname = freezed,
    Object? email = freezed,
    Object? showProgress = freezed,
    Object? userUpdateSuccessOrFailure = freezed,
  }) {
    return _then(_EditProfileState(
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as FullName,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as Nickname,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      showProgress: showProgress == freezed
          ? _value.showProgress
          : showProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      userUpdateSuccessOrFailure: userUpdateSuccessOrFailure == freezed
          ? _value.userUpdateSuccessOrFailure
          : userUpdateSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, User>?,
    ));
  }
}

/// @nodoc

class _$_EditProfileState implements _EditProfileState {
  const _$_EditProfileState(
      {required this.fullName,
      required this.nickname,
      required this.email,
      required this.showProgress,
      required this.userUpdateSuccessOrFailure});

  @override
  final FullName fullName;
  @override
  final Nickname nickname;
  @override
  final Email email;
  @override
  final bool showProgress;
  @override
  final Either<AuthFailure, User>? userUpdateSuccessOrFailure;

  @override
  String toString() {
    return 'EditProfileState(fullName: $fullName, nickname: $nickname, email: $email, showProgress: $showProgress, userUpdateSuccessOrFailure: $userUpdateSuccessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditProfileState &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.showProgress, showProgress) ||
                const DeepCollectionEquality()
                    .equals(other.showProgress, showProgress)) &&
            (identical(other.userUpdateSuccessOrFailure,
                    userUpdateSuccessOrFailure) ||
                const DeepCollectionEquality().equals(
                    other.userUpdateSuccessOrFailure,
                    userUpdateSuccessOrFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(showProgress) ^
      const DeepCollectionEquality().hash(userUpdateSuccessOrFailure);

  @JsonKey(ignore: true)
  @override
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      __$EditProfileStateCopyWithImpl<_EditProfileState>(this, _$identity);
}

abstract class _EditProfileState implements EditProfileState {
  const factory _EditProfileState(
          {required FullName fullName,
          required Nickname nickname,
          required Email email,
          required bool showProgress,
          required Either<AuthFailure, User>? userUpdateSuccessOrFailure}) =
      _$_EditProfileState;

  @override
  FullName get fullName => throw _privateConstructorUsedError;
  @override
  Nickname get nickname => throw _privateConstructorUsedError;
  @override
  Email get email => throw _privateConstructorUsedError;
  @override
  bool get showProgress => throw _privateConstructorUsedError;
  @override
  Either<AuthFailure, User>? get userUpdateSuccessOrFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditProfileStateCopyWith<_EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
