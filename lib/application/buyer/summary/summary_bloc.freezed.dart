// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SummaryEventTearOff {
  const _$SummaryEventTearOff();

  _Started started() {
    return const _Started();
  }

  OnCancelReservationPressed onCancelReservationPressed(
      Reservation? reservation) {
    return OnCancelReservationPressed(
      reservation,
    );
  }

  OnPlaceChanged onPlaceChanged() {
    return const OnPlaceChanged();
  }
}

/// @nodoc
const $SummaryEvent = _$SummaryEventTearOff();

/// @nodoc
mixin _$SummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation? reservation)
        onCancelReservationPressed,
    required TResult Function() onPlaceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation? reservation)? onCancelReservationPressed,
    TResult Function()? onPlaceChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryEventCopyWith<$Res> {
  factory $SummaryEventCopyWith(
          SummaryEvent value, $Res Function(SummaryEvent) then) =
      _$SummaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SummaryEventCopyWithImpl<$Res> implements $SummaryEventCopyWith<$Res> {
  _$SummaryEventCopyWithImpl(this._value, this._then);

  final SummaryEvent _value;
  // ignore: unused_field
  final $Res Function(SummaryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SummaryEventCopyWithImpl<$Res>
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
    return 'SummaryEvent.started()';
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
    required TResult Function(Reservation? reservation)
        onCancelReservationPressed,
    required TResult Function() onPlaceChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation? reservation)? onCancelReservationPressed,
    TResult Function()? onPlaceChanged,
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
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SummaryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $OnCancelReservationPressedCopyWith<$Res> {
  factory $OnCancelReservationPressedCopyWith(OnCancelReservationPressed value,
          $Res Function(OnCancelReservationPressed) then) =
      _$OnCancelReservationPressedCopyWithImpl<$Res>;
  $Res call({Reservation? reservation});

  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$OnCancelReservationPressedCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res>
    implements $OnCancelReservationPressedCopyWith<$Res> {
  _$OnCancelReservationPressedCopyWithImpl(OnCancelReservationPressed _value,
      $Res Function(OnCancelReservationPressed) _then)
      : super(_value, (v) => _then(v as OnCancelReservationPressed));

  @override
  OnCancelReservationPressed get _value =>
      super._value as OnCancelReservationPressed;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(OnCancelReservationPressed(
      reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
    ));
  }

  @override
  $ReservationCopyWith<$Res>? get reservation {
    if (_value.reservation == null) {
      return null;
    }

    return $ReservationCopyWith<$Res>(_value.reservation!, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc

class _$OnCancelReservationPressed implements OnCancelReservationPressed {
  const _$OnCancelReservationPressed(this.reservation);

  @override
  final Reservation? reservation;

  @override
  String toString() {
    return 'SummaryEvent.onCancelReservationPressed(reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCancelReservationPressed &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reservation);

  @JsonKey(ignore: true)
  @override
  $OnCancelReservationPressedCopyWith<OnCancelReservationPressed>
      get copyWith =>
          _$OnCancelReservationPressedCopyWithImpl<OnCancelReservationPressed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation? reservation)
        onCancelReservationPressed,
    required TResult Function() onPlaceChanged,
  }) {
    return onCancelReservationPressed(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation? reservation)? onCancelReservationPressed,
    TResult Function()? onPlaceChanged,
    required TResult orElse(),
  }) {
    if (onCancelReservationPressed != null) {
      return onCancelReservationPressed(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
  }) {
    return onCancelReservationPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    required TResult orElse(),
  }) {
    if (onCancelReservationPressed != null) {
      return onCancelReservationPressed(this);
    }
    return orElse();
  }
}

abstract class OnCancelReservationPressed implements SummaryEvent {
  const factory OnCancelReservationPressed(Reservation? reservation) =
      _$OnCancelReservationPressed;

  Reservation? get reservation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCancelReservationPressedCopyWith<OnCancelReservationPressed>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnPlaceChangedCopyWith<$Res> {
  factory $OnPlaceChangedCopyWith(
          OnPlaceChanged value, $Res Function(OnPlaceChanged) then) =
      _$OnPlaceChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnPlaceChangedCopyWithImpl<$Res>
    extends _$SummaryEventCopyWithImpl<$Res>
    implements $OnPlaceChangedCopyWith<$Res> {
  _$OnPlaceChangedCopyWithImpl(
      OnPlaceChanged _value, $Res Function(OnPlaceChanged) _then)
      : super(_value, (v) => _then(v as OnPlaceChanged));

  @override
  OnPlaceChanged get _value => super._value as OnPlaceChanged;
}

/// @nodoc

class _$OnPlaceChanged implements OnPlaceChanged {
  const _$OnPlaceChanged();

  @override
  String toString() {
    return 'SummaryEvent.onPlaceChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnPlaceChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Reservation? reservation)
        onCancelReservationPressed,
    required TResult Function() onPlaceChanged,
  }) {
    return onPlaceChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Reservation? reservation)? onCancelReservationPressed,
    TResult Function()? onPlaceChanged,
    required TResult orElse(),
  }) {
    if (onPlaceChanged != null) {
      return onPlaceChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
  }) {
    return onPlaceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    required TResult orElse(),
  }) {
    if (onPlaceChanged != null) {
      return onPlaceChanged(this);
    }
    return orElse();
  }
}

abstract class OnPlaceChanged implements SummaryEvent {
  const factory OnPlaceChanged() = _$OnPlaceChanged;
}

/// @nodoc
class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

  _SummaryState call(
      {required bool cancellingReservation,
      required Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      required Place selectedPlace}) {
    return _SummaryState(
      cancellingReservation: cancellingReservation,
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess,
      selectedPlace: selectedPlace,
    );
  }
}

/// @nodoc
const $SummaryState = _$SummaryStateTearOff();

/// @nodoc
mixin _$SummaryState {
  bool get cancellingReservation => throw _privateConstructorUsedError;
  Option<Either<ReservationFailure, Unit>>
      get optionOfReservationCancelFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Place get selectedPlace => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SummaryStateCopyWith<SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryStateCopyWith<$Res> {
  factory $SummaryStateCopyWith(
          SummaryState value, $Res Function(SummaryState) then) =
      _$SummaryStateCopyWithImpl<$Res>;
  $Res call(
      {bool cancellingReservation,
      Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      Place selectedPlace});

  $PlaceCopyWith<$Res> get selectedPlace;
}

/// @nodoc
class _$SummaryStateCopyWithImpl<$Res> implements $SummaryStateCopyWith<$Res> {
  _$SummaryStateCopyWithImpl(this._value, this._then);

  final SummaryState _value;
  // ignore: unused_field
  final $Res Function(SummaryState) _then;

  @override
  $Res call({
    Object? cancellingReservation = freezed,
    Object? optionOfReservationCancelFailureOrSuccess = freezed,
    Object? selectedPlace = freezed,
  }) {
    return _then(_value.copyWith(
      cancellingReservation: cancellingReservation == freezed
          ? _value.cancellingReservation
          : cancellingReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess == freezed
              ? _value.optionOfReservationCancelFailureOrSuccess
              : optionOfReservationCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, Unit>>,
      selectedPlace: selectedPlace == freezed
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }

  @override
  $PlaceCopyWith<$Res> get selectedPlace {
    return $PlaceCopyWith<$Res>(_value.selectedPlace, (value) {
      return _then(_value.copyWith(selectedPlace: value));
    });
  }
}

/// @nodoc
abstract class _$SummaryStateCopyWith<$Res>
    implements $SummaryStateCopyWith<$Res> {
  factory _$SummaryStateCopyWith(
          _SummaryState value, $Res Function(_SummaryState) then) =
      __$SummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool cancellingReservation,
      Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      Place selectedPlace});

  @override
  $PlaceCopyWith<$Res> get selectedPlace;
}

/// @nodoc
class __$SummaryStateCopyWithImpl<$Res> extends _$SummaryStateCopyWithImpl<$Res>
    implements _$SummaryStateCopyWith<$Res> {
  __$SummaryStateCopyWithImpl(
      _SummaryState _value, $Res Function(_SummaryState) _then)
      : super(_value, (v) => _then(v as _SummaryState));

  @override
  _SummaryState get _value => super._value as _SummaryState;

  @override
  $Res call({
    Object? cancellingReservation = freezed,
    Object? optionOfReservationCancelFailureOrSuccess = freezed,
    Object? selectedPlace = freezed,
  }) {
    return _then(_SummaryState(
      cancellingReservation: cancellingReservation == freezed
          ? _value.cancellingReservation
          : cancellingReservation // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess == freezed
              ? _value.optionOfReservationCancelFailureOrSuccess
              : optionOfReservationCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, Unit>>,
      selectedPlace: selectedPlace == freezed
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class _$_SummaryState implements _SummaryState {
  const _$_SummaryState(
      {required this.cancellingReservation,
      required this.optionOfReservationCancelFailureOrSuccess,
      required this.selectedPlace});

  @override
  final bool cancellingReservation;
  @override
  final Option<Either<ReservationFailure, Unit>>
      optionOfReservationCancelFailureOrSuccess;
  @override
  final Place selectedPlace;

  @override
  String toString() {
    return 'SummaryState(cancellingReservation: $cancellingReservation, optionOfReservationCancelFailureOrSuccess: $optionOfReservationCancelFailureOrSuccess, selectedPlace: $selectedPlace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryState &&
            (identical(other.cancellingReservation, cancellingReservation) ||
                const DeepCollectionEquality().equals(
                    other.cancellingReservation, cancellingReservation)) &&
            (identical(other.optionOfReservationCancelFailureOrSuccess,
                    optionOfReservationCancelFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfReservationCancelFailureOrSuccess,
                    optionOfReservationCancelFailureOrSuccess)) &&
            (identical(other.selectedPlace, selectedPlace) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPlace, selectedPlace)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cancellingReservation) ^
      const DeepCollectionEquality()
          .hash(optionOfReservationCancelFailureOrSuccess) ^
      const DeepCollectionEquality().hash(selectedPlace);

  @JsonKey(ignore: true)
  @override
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      __$SummaryStateCopyWithImpl<_SummaryState>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {required bool cancellingReservation,
      required Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      required Place selectedPlace}) = _$_SummaryState;

  @override
  bool get cancellingReservation => throw _privateConstructorUsedError;
  @override
  Option<Either<ReservationFailure, Unit>>
      get optionOfReservationCancelFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  Place get selectedPlace => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
