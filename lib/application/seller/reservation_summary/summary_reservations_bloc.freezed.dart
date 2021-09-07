// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'summary_reservations_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SummaryReservationsEventTearOff {
  const _$SummaryReservationsEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SummaryReservationsEvent = _$SummaryReservationsEventTearOff();

/// @nodoc
mixin _$SummaryReservationsEvent {
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
abstract class $SummaryReservationsEventCopyWith<$Res> {
  factory $SummaryReservationsEventCopyWith(SummaryReservationsEvent value,
          $Res Function(SummaryReservationsEvent) then) =
      _$SummaryReservationsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SummaryReservationsEventCopyWithImpl<$Res>
    implements $SummaryReservationsEventCopyWith<$Res> {
  _$SummaryReservationsEventCopyWithImpl(this._value, this._then);

  final SummaryReservationsEvent _value;
  // ignore: unused_field
  final $Res Function(SummaryReservationsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SummaryReservationsEventCopyWithImpl<$Res>
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
    return 'SummaryReservationsEvent.started()';
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

abstract class _Started implements SummaryReservationsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SummaryReservationsStateTearOff {
  const _$SummaryReservationsStateTearOff();

  _SummaryReservationsState call(
      {required bool loading,
      required Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationsFailureOrSuccess}) {
    return _SummaryReservationsState(
      loading: loading,
      optionOfReservationsFailureOrSuccess:
          optionOfReservationsFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SummaryReservationsState = _$SummaryReservationsStateTearOff();

/// @nodoc
mixin _$SummaryReservationsState {
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<ReservationFailure, List<Reservation>>>
      get optionOfReservationsFailureOrSuccess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryReservationsStateCopyWith<SummaryReservationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryReservationsStateCopyWith<$Res> {
  factory $SummaryReservationsStateCopyWith(SummaryReservationsState value,
          $Res Function(SummaryReservationsState) then) =
      _$SummaryReservationsStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationsFailureOrSuccess});
}

/// @nodoc
class _$SummaryReservationsStateCopyWithImpl<$Res>
    implements $SummaryReservationsStateCopyWith<$Res> {
  _$SummaryReservationsStateCopyWithImpl(this._value, this._then);

  final SummaryReservationsState _value;
  // ignore: unused_field
  final $Res Function(SummaryReservationsState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? optionOfReservationsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationsFailureOrSuccess: optionOfReservationsFailureOrSuccess ==
              freezed
          ? _value.optionOfReservationsFailureOrSuccess
          : optionOfReservationsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReservationFailure, List<Reservation>>>,
    ));
  }
}

/// @nodoc
abstract class _$SummaryReservationsStateCopyWith<$Res>
    implements $SummaryReservationsStateCopyWith<$Res> {
  factory _$SummaryReservationsStateCopyWith(_SummaryReservationsState value,
          $Res Function(_SummaryReservationsState) then) =
      __$SummaryReservationsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationsFailureOrSuccess});
}

/// @nodoc
class __$SummaryReservationsStateCopyWithImpl<$Res>
    extends _$SummaryReservationsStateCopyWithImpl<$Res>
    implements _$SummaryReservationsStateCopyWith<$Res> {
  __$SummaryReservationsStateCopyWithImpl(_SummaryReservationsState _value,
      $Res Function(_SummaryReservationsState) _then)
      : super(_value, (v) => _then(v as _SummaryReservationsState));

  @override
  _SummaryReservationsState get _value =>
      super._value as _SummaryReservationsState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? optionOfReservationsFailureOrSuccess = freezed,
  }) {
    return _then(_SummaryReservationsState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationsFailureOrSuccess: optionOfReservationsFailureOrSuccess ==
              freezed
          ? _value.optionOfReservationsFailureOrSuccess
          : optionOfReservationsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ReservationFailure, List<Reservation>>>,
    ));
  }
}

/// @nodoc

class _$_SummaryReservationsState implements _SummaryReservationsState {
  const _$_SummaryReservationsState(
      {required this.loading,
      required this.optionOfReservationsFailureOrSuccess});

  @override
  final bool loading;
  @override
  final Option<Either<ReservationFailure, List<Reservation>>>
      optionOfReservationsFailureOrSuccess;

  @override
  String toString() {
    return 'SummaryReservationsState(loading: $loading, optionOfReservationsFailureOrSuccess: $optionOfReservationsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryReservationsState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.optionOfReservationsFailureOrSuccess,
                    optionOfReservationsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfReservationsFailureOrSuccess,
                    optionOfReservationsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(optionOfReservationsFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SummaryReservationsStateCopyWith<_SummaryReservationsState> get copyWith =>
      __$SummaryReservationsStateCopyWithImpl<_SummaryReservationsState>(
          this, _$identity);
}

abstract class _SummaryReservationsState implements SummaryReservationsState {
  const factory _SummaryReservationsState(
      {required bool loading,
      required Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationsFailureOrSuccess}) = _$_SummaryReservationsState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<Either<ReservationFailure, List<Reservation>>>
      get optionOfReservationsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SummaryReservationsStateCopyWith<_SummaryReservationsState> get copyWith =>
      throw _privateConstructorUsedError;
}
