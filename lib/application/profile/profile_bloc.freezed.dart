// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileEventTearOff {
  const _$ProfileEventTearOff();

  _Started started() {
    return const _Started();
  }

  OnNotificationSwitchTapped onNotificationSwitchTapped(bool value) {
    return OnNotificationSwitchTapped(
      value,
    );
  }
}

/// @nodoc
const $ProfileEvent = _$ProfileEventTearOff();

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) onNotificationSwitchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? onNotificationSwitchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnNotificationSwitchTapped value)
        onNotificationSwitchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnNotificationSwitchTapped value)?
        onNotificationSwitchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProfileEventCopyWithImpl<$Res>
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
    return 'ProfileEvent.started()';
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
    required TResult Function(bool value) onNotificationSwitchTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? onNotificationSwitchTapped,
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
    required TResult Function(OnNotificationSwitchTapped value)
        onNotificationSwitchTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnNotificationSwitchTapped value)?
        onNotificationSwitchTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProfileEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $OnNotificationSwitchTappedCopyWith<$Res> {
  factory $OnNotificationSwitchTappedCopyWith(OnNotificationSwitchTapped value,
          $Res Function(OnNotificationSwitchTapped) then) =
      _$OnNotificationSwitchTappedCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$OnNotificationSwitchTappedCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements $OnNotificationSwitchTappedCopyWith<$Res> {
  _$OnNotificationSwitchTappedCopyWithImpl(OnNotificationSwitchTapped _value,
      $Res Function(OnNotificationSwitchTapped) _then)
      : super(_value, (v) => _then(v as OnNotificationSwitchTapped));

  @override
  OnNotificationSwitchTapped get _value =>
      super._value as OnNotificationSwitchTapped;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(OnNotificationSwitchTapped(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OnNotificationSwitchTapped implements OnNotificationSwitchTapped {
  const _$OnNotificationSwitchTapped(this.value);

  @override
  final bool value;

  @override
  String toString() {
    return 'ProfileEvent.onNotificationSwitchTapped(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnNotificationSwitchTapped &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $OnNotificationSwitchTappedCopyWith<OnNotificationSwitchTapped>
      get copyWith =>
          _$OnNotificationSwitchTappedCopyWithImpl<OnNotificationSwitchTapped>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool value) onNotificationSwitchTapped,
  }) {
    return onNotificationSwitchTapped(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool value)? onNotificationSwitchTapped,
    required TResult orElse(),
  }) {
    if (onNotificationSwitchTapped != null) {
      return onNotificationSwitchTapped(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnNotificationSwitchTapped value)
        onNotificationSwitchTapped,
  }) {
    return onNotificationSwitchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnNotificationSwitchTapped value)?
        onNotificationSwitchTapped,
    required TResult orElse(),
  }) {
    if (onNotificationSwitchTapped != null) {
      return onNotificationSwitchTapped(this);
    }
    return orElse();
  }
}

abstract class OnNotificationSwitchTapped implements ProfileEvent {
  const factory OnNotificationSwitchTapped(bool value) =
      _$OnNotificationSwitchTapped;

  bool get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnNotificationSwitchTappedCopyWith<OnNotificationSwitchTapped>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {required User? user,
      required bool isBuyer,
      required bool restartApplication,
      required bool displayNotifications}) {
    return _ProfileState(
      user: user,
      isBuyer: isBuyer,
      restartApplication: restartApplication,
      displayNotifications: displayNotifications,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  User? get user => throw _privateConstructorUsedError;
  bool get isBuyer => throw _privateConstructorUsedError;
  bool get restartApplication => throw _privateConstructorUsedError;
  bool get displayNotifications => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {User? user,
      bool isBuyer,
      bool restartApplication,
      bool displayNotifications});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isBuyer = freezed,
    Object? restartApplication = freezed,
    Object? displayNotifications = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isBuyer: isBuyer == freezed
          ? _value.isBuyer
          : isBuyer // ignore: cast_nullable_to_non_nullable
              as bool,
      restartApplication: restartApplication == freezed
          ? _value.restartApplication
          : restartApplication // ignore: cast_nullable_to_non_nullable
              as bool,
      displayNotifications: displayNotifications == freezed
          ? _value.displayNotifications
          : displayNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? user,
      bool isBuyer,
      bool restartApplication,
      bool displayNotifications});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isBuyer = freezed,
    Object? restartApplication = freezed,
    Object? displayNotifications = freezed,
  }) {
    return _then(_ProfileState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isBuyer: isBuyer == freezed
          ? _value.isBuyer
          : isBuyer // ignore: cast_nullable_to_non_nullable
              as bool,
      restartApplication: restartApplication == freezed
          ? _value.restartApplication
          : restartApplication // ignore: cast_nullable_to_non_nullable
              as bool,
      displayNotifications: displayNotifications == freezed
          ? _value.displayNotifications
          : displayNotifications // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {required this.user,
      required this.isBuyer,
      required this.restartApplication,
      required this.displayNotifications});

  @override
  final User? user;
  @override
  final bool isBuyer;
  @override
  final bool restartApplication;
  @override
  final bool displayNotifications;

  @override
  String toString() {
    return 'ProfileState(user: $user, isBuyer: $isBuyer, restartApplication: $restartApplication, displayNotifications: $displayNotifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileState &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)) &&
            (identical(other.isBuyer, isBuyer) ||
                const DeepCollectionEquality()
                    .equals(other.isBuyer, isBuyer)) &&
            (identical(other.restartApplication, restartApplication) ||
                const DeepCollectionEquality()
                    .equals(other.restartApplication, restartApplication)) &&
            (identical(other.displayNotifications, displayNotifications) ||
                const DeepCollectionEquality()
                    .equals(other.displayNotifications, displayNotifications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(user) ^
      const DeepCollectionEquality().hash(isBuyer) ^
      const DeepCollectionEquality().hash(restartApplication) ^
      const DeepCollectionEquality().hash(displayNotifications);

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {required User? user,
      required bool isBuyer,
      required bool restartApplication,
      required bool displayNotifications}) = _$_ProfileState;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool get isBuyer => throw _privateConstructorUsedError;
  @override
  bool get restartApplication => throw _privateConstructorUsedError;
  @override
  bool get displayNotifications => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
