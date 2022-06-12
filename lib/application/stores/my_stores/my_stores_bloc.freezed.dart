// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_stores_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyStoresEventTearOff {
  const _$MyStoresEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $MyStoresEvent = _$MyStoresEventTearOff();

/// @nodoc
mixin _$MyStoresEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStoresEventCopyWith<$Res> {
  factory $MyStoresEventCopyWith(
          MyStoresEvent value, $Res Function(MyStoresEvent) then) =
      _$MyStoresEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MyStoresEventCopyWithImpl<$Res>
    implements $MyStoresEventCopyWith<$Res> {
  _$MyStoresEventCopyWithImpl(this._value, this._then);

  final MyStoresEvent _value;
  // ignore: unused_field
  final $Res Function(MyStoresEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$MyStoresEventCopyWithImpl<$Res>
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
    return 'MyStoresEvent.started()';
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MyStoresEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$MyStoresStateTearOff {
  const _$MyStoresStateTearOff();

  _MyStoresState call(
      {required bool loading,
      required User? loggedUser,
      required Either<StoresFailure, MyStores>? myStoresSuccessOrFailure}) {
    return _MyStoresState(
      loading: loading,
      loggedUser: loggedUser,
      myStoresSuccessOrFailure: myStoresSuccessOrFailure,
    );
  }
}

/// @nodoc
const $MyStoresState = _$MyStoresStateTearOff();

/// @nodoc
mixin _$MyStoresState {
  bool get loading => throw _privateConstructorUsedError;
  User? get loggedUser => throw _privateConstructorUsedError;
  Either<StoresFailure, MyStores>? get myStoresSuccessOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyStoresStateCopyWith<MyStoresState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStoresStateCopyWith<$Res> {
  factory $MyStoresStateCopyWith(
          MyStoresState value, $Res Function(MyStoresState) then) =
      _$MyStoresStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      User? loggedUser,
      Either<StoresFailure, MyStores>? myStoresSuccessOrFailure});

  $UserCopyWith<$Res>? get loggedUser;
}

/// @nodoc
class _$MyStoresStateCopyWithImpl<$Res>
    implements $MyStoresStateCopyWith<$Res> {
  _$MyStoresStateCopyWithImpl(this._value, this._then);

  final MyStoresState _value;
  // ignore: unused_field
  final $Res Function(MyStoresState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? loggedUser = freezed,
    Object? myStoresSuccessOrFailure = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      myStoresSuccessOrFailure: myStoresSuccessOrFailure == freezed
          ? _value.myStoresSuccessOrFailure
          : myStoresSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<StoresFailure, MyStores>?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get loggedUser {
    if (_value.loggedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.loggedUser!, (value) {
      return _then(_value.copyWith(loggedUser: value));
    });
  }
}

/// @nodoc
abstract class _$MyStoresStateCopyWith<$Res>
    implements $MyStoresStateCopyWith<$Res> {
  factory _$MyStoresStateCopyWith(
          _MyStoresState value, $Res Function(_MyStoresState) then) =
      __$MyStoresStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      User? loggedUser,
      Either<StoresFailure, MyStores>? myStoresSuccessOrFailure});

  @override
  $UserCopyWith<$Res>? get loggedUser;
}

/// @nodoc
class __$MyStoresStateCopyWithImpl<$Res>
    extends _$MyStoresStateCopyWithImpl<$Res>
    implements _$MyStoresStateCopyWith<$Res> {
  __$MyStoresStateCopyWithImpl(
      _MyStoresState _value, $Res Function(_MyStoresState) _then)
      : super(_value, (v) => _then(v as _MyStoresState));

  @override
  _MyStoresState get _value => super._value as _MyStoresState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? loggedUser = freezed,
    Object? myStoresSuccessOrFailure = freezed,
  }) {
    return _then(_MyStoresState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      myStoresSuccessOrFailure: myStoresSuccessOrFailure == freezed
          ? _value.myStoresSuccessOrFailure
          : myStoresSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Either<StoresFailure, MyStores>?,
    ));
  }
}

/// @nodoc

class _$_MyStoresState implements _MyStoresState {
  const _$_MyStoresState(
      {required this.loading,
      required this.loggedUser,
      required this.myStoresSuccessOrFailure});

  @override
  final bool loading;
  @override
  final User? loggedUser;
  @override
  final Either<StoresFailure, MyStores>? myStoresSuccessOrFailure;

  @override
  String toString() {
    return 'MyStoresState(loading: $loading, loggedUser: $loggedUser, myStoresSuccessOrFailure: $myStoresSuccessOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyStoresState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.loggedUser, loggedUser) ||
                const DeepCollectionEquality()
                    .equals(other.loggedUser, loggedUser)) &&
            (identical(
                    other.myStoresSuccessOrFailure, myStoresSuccessOrFailure) ||
                const DeepCollectionEquality().equals(
                    other.myStoresSuccessOrFailure, myStoresSuccessOrFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(loggedUser) ^
      const DeepCollectionEquality().hash(myStoresSuccessOrFailure);

  @JsonKey(ignore: true)
  @override
  _$MyStoresStateCopyWith<_MyStoresState> get copyWith =>
      __$MyStoresStateCopyWithImpl<_MyStoresState>(this, _$identity);
}

abstract class _MyStoresState implements MyStoresState {
  const factory _MyStoresState(
          {required bool loading,
          required User? loggedUser,
          required Either<StoresFailure, MyStores>? myStoresSuccessOrFailure}) =
      _$_MyStoresState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  User? get loggedUser => throw _privateConstructorUsedError;
  @override
  Either<StoresFailure, MyStores>? get myStoresSuccessOrFailure =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyStoresStateCopyWith<_MyStoresState> get copyWith =>
      throw _privateConstructorUsedError;
}
