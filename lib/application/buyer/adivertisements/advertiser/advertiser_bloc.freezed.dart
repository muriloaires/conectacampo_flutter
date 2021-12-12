// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'advertiser_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdvertiserEventTearOff {
  const _$AdvertiserEventTearOff();

  _Started started(User? user) {
    return _Started(
      user,
    );
  }
}

/// @nodoc
const $AdvertiserEvent = _$AdvertiserEventTearOff();

/// @nodoc
mixin _$AdvertiserEvent {
  User? get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? started,
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

  @JsonKey(ignore: true)
  $AdvertiserEventCopyWith<AdvertiserEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertiserEventCopyWith<$Res> {
  factory $AdvertiserEventCopyWith(
          AdvertiserEvent value, $Res Function(AdvertiserEvent) then) =
      _$AdvertiserEventCopyWithImpl<$Res>;
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AdvertiserEventCopyWithImpl<$Res>
    implements $AdvertiserEventCopyWith<$Res> {
  _$AdvertiserEventCopyWithImpl(this._value, this._then);

  final AdvertiserEvent _value;
  // ignore: unused_field
  final $Res Function(AdvertiserEvent) _then;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
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
abstract class _$StartedCopyWith<$Res>
    implements $AdvertiserEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AdvertiserEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_Started(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AdvertiserEvent.started(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User? user) started,
  }) {
    return started(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User? user)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(user);
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

abstract class _Started implements AdvertiserEvent {
  const factory _Started(User? user) = _$_Started;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdvertiserStateTearOff {
  const _$AdvertiserStateTearOff();

  _AdvertiserState call({required User? seller}) {
    return _AdvertiserState(
      seller: seller,
    );
  }
}

/// @nodoc
const $AdvertiserState = _$AdvertiserStateTearOff();

/// @nodoc
mixin _$AdvertiserState {
  User? get seller => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertiserStateCopyWith<AdvertiserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertiserStateCopyWith<$Res> {
  factory $AdvertiserStateCopyWith(
          AdvertiserState value, $Res Function(AdvertiserState) then) =
      _$AdvertiserStateCopyWithImpl<$Res>;
  $Res call({User? seller});

  $UserCopyWith<$Res>? get seller;
}

/// @nodoc
class _$AdvertiserStateCopyWithImpl<$Res>
    implements $AdvertiserStateCopyWith<$Res> {
  _$AdvertiserStateCopyWithImpl(this._value, this._then);

  final AdvertiserState _value;
  // ignore: unused_field
  final $Res Function(AdvertiserState) _then;

  @override
  $Res call({
    Object? seller = freezed,
  }) {
    return _then(_value.copyWith(
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value));
    });
  }
}

/// @nodoc
abstract class _$AdvertiserStateCopyWith<$Res>
    implements $AdvertiserStateCopyWith<$Res> {
  factory _$AdvertiserStateCopyWith(
          _AdvertiserState value, $Res Function(_AdvertiserState) then) =
      __$AdvertiserStateCopyWithImpl<$Res>;
  @override
  $Res call({User? seller});

  @override
  $UserCopyWith<$Res>? get seller;
}

/// @nodoc
class __$AdvertiserStateCopyWithImpl<$Res>
    extends _$AdvertiserStateCopyWithImpl<$Res>
    implements _$AdvertiserStateCopyWith<$Res> {
  __$AdvertiserStateCopyWithImpl(
      _AdvertiserState _value, $Res Function(_AdvertiserState) _then)
      : super(_value, (v) => _then(v as _AdvertiserState));

  @override
  _AdvertiserState get _value => super._value as _AdvertiserState;

  @override
  $Res call({
    Object? seller = freezed,
  }) {
    return _then(_AdvertiserState(
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AdvertiserState implements _AdvertiserState {
  const _$_AdvertiserState({required this.seller});

  @override
  final User? seller;

  @override
  String toString() {
    return 'AdvertiserState(seller: $seller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdvertiserState &&
            (identical(other.seller, seller) ||
                const DeepCollectionEquality().equals(other.seller, seller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(seller);

  @JsonKey(ignore: true)
  @override
  _$AdvertiserStateCopyWith<_AdvertiserState> get copyWith =>
      __$AdvertiserStateCopyWithImpl<_AdvertiserState>(this, _$identity);
}

abstract class _AdvertiserState implements AdvertiserState {
  const factory _AdvertiserState({required User? seller}) = _$_AdvertiserState;

  @override
  User? get seller => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdvertiserStateCopyWith<_AdvertiserState> get copyWith =>
      throw _privateConstructorUsedError;
}
