// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seller_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SellerGroupEventTearOff {
  const _$SellerGroupEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SellerGroupEvent = _$SellerGroupEventTearOff();

/// @nodoc
mixin _$SellerGroupEvent {
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
abstract class $SellerGroupEventCopyWith<$Res> {
  factory $SellerGroupEventCopyWith(
          SellerGroupEvent value, $Res Function(SellerGroupEvent) then) =
      _$SellerGroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SellerGroupEventCopyWithImpl<$Res>
    implements $SellerGroupEventCopyWith<$Res> {
  _$SellerGroupEventCopyWithImpl(this._value, this._then);

  final SellerGroupEvent _value;
  // ignore: unused_field
  final $Res Function(SellerGroupEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SellerGroupEventCopyWithImpl<$Res>
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
    return 'SellerGroupEvent.started()';
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

abstract class _Started implements SellerGroupEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SellerGroupStateTearOff {
  const _$SellerGroupStateTearOff();

  _SellerGroupState call(
      {required Either<ReservationFailure, List<Reservation>>
          groupReservations}) {
    return _SellerGroupState(
      groupReservations: groupReservations,
    );
  }
}

/// @nodoc
const $SellerGroupState = _$SellerGroupStateTearOff();

/// @nodoc
mixin _$SellerGroupState {
  Either<ReservationFailure, List<Reservation>> get groupReservations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerGroupStateCopyWith<SellerGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerGroupStateCopyWith<$Res> {
  factory $SellerGroupStateCopyWith(
          SellerGroupState value, $Res Function(SellerGroupState) then) =
      _$SellerGroupStateCopyWithImpl<$Res>;
  $Res call({Either<ReservationFailure, List<Reservation>> groupReservations});
}

/// @nodoc
class _$SellerGroupStateCopyWithImpl<$Res>
    implements $SellerGroupStateCopyWith<$Res> {
  _$SellerGroupStateCopyWithImpl(this._value, this._then);

  final SellerGroupState _value;
  // ignore: unused_field
  final $Res Function(SellerGroupState) _then;

  @override
  $Res call({
    Object? groupReservations = freezed,
  }) {
    return _then(_value.copyWith(
      groupReservations: groupReservations == freezed
          ? _value.groupReservations
          : groupReservations // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, List<Reservation>>,
    ));
  }
}

/// @nodoc
abstract class _$SellerGroupStateCopyWith<$Res>
    implements $SellerGroupStateCopyWith<$Res> {
  factory _$SellerGroupStateCopyWith(
          _SellerGroupState value, $Res Function(_SellerGroupState) then) =
      __$SellerGroupStateCopyWithImpl<$Res>;
  @override
  $Res call({Either<ReservationFailure, List<Reservation>> groupReservations});
}

/// @nodoc
class __$SellerGroupStateCopyWithImpl<$Res>
    extends _$SellerGroupStateCopyWithImpl<$Res>
    implements _$SellerGroupStateCopyWith<$Res> {
  __$SellerGroupStateCopyWithImpl(
      _SellerGroupState _value, $Res Function(_SellerGroupState) _then)
      : super(_value, (v) => _then(v as _SellerGroupState));

  @override
  _SellerGroupState get _value => super._value as _SellerGroupState;

  @override
  $Res call({
    Object? groupReservations = freezed,
  }) {
    return _then(_SellerGroupState(
      groupReservations: groupReservations == freezed
          ? _value.groupReservations
          : groupReservations // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, List<Reservation>>,
    ));
  }
}

/// @nodoc

class _$_SellerGroupState implements _SellerGroupState {
  const _$_SellerGroupState({required this.groupReservations});

  @override
  final Either<ReservationFailure, List<Reservation>> groupReservations;

  @override
  String toString() {
    return 'SellerGroupState(groupReservations: $groupReservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerGroupState &&
            (identical(other.groupReservations, groupReservations) ||
                const DeepCollectionEquality()
                    .equals(other.groupReservations, groupReservations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(groupReservations);

  @JsonKey(ignore: true)
  @override
  _$SellerGroupStateCopyWith<_SellerGroupState> get copyWith =>
      __$SellerGroupStateCopyWithImpl<_SellerGroupState>(this, _$identity);
}

abstract class _SellerGroupState implements SellerGroupState {
  const factory _SellerGroupState(
      {required Either<ReservationFailure, List<Reservation>>
          groupReservations}) = _$_SellerGroupState;

  @override
  Either<ReservationFailure, List<Reservation>> get groupReservations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerGroupStateCopyWith<_SellerGroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
