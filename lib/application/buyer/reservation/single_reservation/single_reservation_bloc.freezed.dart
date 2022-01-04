// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleReservationEventTearOff {
  const _$SingleReservationEventTearOff();

  _Started started(Reservation resservation) {
    return _Started(
      resservation,
    );
  }

  OnAcceptPressed onAcceptPressed(int index) {
    return OnAcceptPressed(
      index,
    );
  }

  OnCancelPressed onCancelPressed(int index) {
    return OnCancelPressed(
      index,
    );
  }

  OnAcceptErrorDisplayed onAcceptErrorDisplayed() {
    return const OnAcceptErrorDisplayed();
  }

  OnCancelErrorDisplayed onCancelErrorDisplayed() {
    return const OnCancelErrorDisplayed();
  }

  OnExpandPressed onExpandPressed() {
    return const OnExpandPressed();
  }

  OnCancelReservationPressed onCancelReservationPressed() {
    return const OnCancelReservationPressed();
  }
}

/// @nodoc
const $SingleReservationEvent = _$SingleReservationEventTearOff();

/// @nodoc
mixin _$SingleReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleReservationEventCopyWith<$Res> {
  factory $SingleReservationEventCopyWith(SingleReservationEvent value,
          $Res Function(SingleReservationEvent) then) =
      _$SingleReservationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleReservationEventCopyWithImpl<$Res>
    implements $SingleReservationEventCopyWith<$Res> {
  _$SingleReservationEventCopyWithImpl(this._value, this._then);

  final SingleReservationEvent _value;
  // ignore: unused_field
  final $Res Function(SingleReservationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Reservation resservation});

  $ReservationCopyWith<$Res> get resservation;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? resservation = freezed,
  }) {
    return _then(_Started(
      resservation == freezed
          ? _value.resservation
          : resservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }

  @override
  $ReservationCopyWith<$Res> get resservation {
    return $ReservationCopyWith<$Res>(_value.resservation, (value) {
      return _then(_value.copyWith(resservation: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.resservation);

  @override
  final Reservation resservation;

  @override
  String toString() {
    return 'SingleReservationEvent.started(resservation: $resservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.resservation, resservation) ||
                const DeepCollectionEquality()
                    .equals(other.resservation, resservation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(resservation);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return started(resservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(resservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SingleReservationEvent {
  const factory _Started(Reservation resservation) = _$_Started;

  Reservation get resservation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnAcceptPressedCopyWith<$Res> {
  factory $OnAcceptPressedCopyWith(
          OnAcceptPressed value, $Res Function(OnAcceptPressed) then) =
      _$OnAcceptPressedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnAcceptPressedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnAcceptPressedCopyWith<$Res> {
  _$OnAcceptPressedCopyWithImpl(
      OnAcceptPressed _value, $Res Function(OnAcceptPressed) _then)
      : super(_value, (v) => _then(v as OnAcceptPressed));

  @override
  OnAcceptPressed get _value => super._value as OnAcceptPressed;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnAcceptPressed(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnAcceptPressed implements OnAcceptPressed {
  const _$OnAcceptPressed(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SingleReservationEvent.onAcceptPressed(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnAcceptPressed &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $OnAcceptPressedCopyWith<OnAcceptPressed> get copyWith =>
      _$OnAcceptPressedCopyWithImpl<OnAcceptPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onAcceptPressed(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onAcceptPressed != null) {
      return onAcceptPressed(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onAcceptPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onAcceptPressed != null) {
      return onAcceptPressed(this);
    }
    return orElse();
  }
}

abstract class OnAcceptPressed implements SingleReservationEvent {
  const factory OnAcceptPressed(int index) = _$OnAcceptPressed;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnAcceptPressedCopyWith<OnAcceptPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCancelPressedCopyWith<$Res> {
  factory $OnCancelPressedCopyWith(
          OnCancelPressed value, $Res Function(OnCancelPressed) then) =
      _$OnCancelPressedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnCancelPressedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnCancelPressedCopyWith<$Res> {
  _$OnCancelPressedCopyWithImpl(
      OnCancelPressed _value, $Res Function(OnCancelPressed) _then)
      : super(_value, (v) => _then(v as OnCancelPressed));

  @override
  OnCancelPressed get _value => super._value as OnCancelPressed;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnCancelPressed(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnCancelPressed implements OnCancelPressed {
  const _$OnCancelPressed(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SingleReservationEvent.onCancelPressed(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCancelPressed &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $OnCancelPressedCopyWith<OnCancelPressed> get copyWith =>
      _$OnCancelPressedCopyWithImpl<OnCancelPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onCancelPressed(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelPressed != null) {
      return onCancelPressed(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onCancelPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelPressed != null) {
      return onCancelPressed(this);
    }
    return orElse();
  }
}

abstract class OnCancelPressed implements SingleReservationEvent {
  const factory OnCancelPressed(int index) = _$OnCancelPressed;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCancelPressedCopyWith<OnCancelPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnAcceptErrorDisplayedCopyWith<$Res> {
  factory $OnAcceptErrorDisplayedCopyWith(OnAcceptErrorDisplayed value,
          $Res Function(OnAcceptErrorDisplayed) then) =
      _$OnAcceptErrorDisplayedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnAcceptErrorDisplayedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnAcceptErrorDisplayedCopyWith<$Res> {
  _$OnAcceptErrorDisplayedCopyWithImpl(OnAcceptErrorDisplayed _value,
      $Res Function(OnAcceptErrorDisplayed) _then)
      : super(_value, (v) => _then(v as OnAcceptErrorDisplayed));

  @override
  OnAcceptErrorDisplayed get _value => super._value as OnAcceptErrorDisplayed;
}

/// @nodoc

class _$OnAcceptErrorDisplayed implements OnAcceptErrorDisplayed {
  const _$OnAcceptErrorDisplayed();

  @override
  String toString() {
    return 'SingleReservationEvent.onAcceptErrorDisplayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnAcceptErrorDisplayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onAcceptErrorDisplayed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onAcceptErrorDisplayed != null) {
      return onAcceptErrorDisplayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onAcceptErrorDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onAcceptErrorDisplayed != null) {
      return onAcceptErrorDisplayed(this);
    }
    return orElse();
  }
}

abstract class OnAcceptErrorDisplayed implements SingleReservationEvent {
  const factory OnAcceptErrorDisplayed() = _$OnAcceptErrorDisplayed;
}

/// @nodoc
abstract class $OnCancelErrorDisplayedCopyWith<$Res> {
  factory $OnCancelErrorDisplayedCopyWith(OnCancelErrorDisplayed value,
          $Res Function(OnCancelErrorDisplayed) then) =
      _$OnCancelErrorDisplayedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCancelErrorDisplayedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnCancelErrorDisplayedCopyWith<$Res> {
  _$OnCancelErrorDisplayedCopyWithImpl(OnCancelErrorDisplayed _value,
      $Res Function(OnCancelErrorDisplayed) _then)
      : super(_value, (v) => _then(v as OnCancelErrorDisplayed));

  @override
  OnCancelErrorDisplayed get _value => super._value as OnCancelErrorDisplayed;
}

/// @nodoc

class _$OnCancelErrorDisplayed implements OnCancelErrorDisplayed {
  const _$OnCancelErrorDisplayed();

  @override
  String toString() {
    return 'SingleReservationEvent.onCancelErrorDisplayed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCancelErrorDisplayed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onCancelErrorDisplayed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelErrorDisplayed != null) {
      return onCancelErrorDisplayed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onCancelErrorDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelErrorDisplayed != null) {
      return onCancelErrorDisplayed(this);
    }
    return orElse();
  }
}

abstract class OnCancelErrorDisplayed implements SingleReservationEvent {
  const factory OnCancelErrorDisplayed() = _$OnCancelErrorDisplayed;
}

/// @nodoc
abstract class $OnExpandPressedCopyWith<$Res> {
  factory $OnExpandPressedCopyWith(
          OnExpandPressed value, $Res Function(OnExpandPressed) then) =
      _$OnExpandPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnExpandPressedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnExpandPressedCopyWith<$Res> {
  _$OnExpandPressedCopyWithImpl(
      OnExpandPressed _value, $Res Function(OnExpandPressed) _then)
      : super(_value, (v) => _then(v as OnExpandPressed));

  @override
  OnExpandPressed get _value => super._value as OnExpandPressed;
}

/// @nodoc

class _$OnExpandPressed implements OnExpandPressed {
  const _$OnExpandPressed();

  @override
  String toString() {
    return 'SingleReservationEvent.onExpandPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnExpandPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onExpandPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onExpandPressed != null) {
      return onExpandPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onExpandPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onExpandPressed != null) {
      return onExpandPressed(this);
    }
    return orElse();
  }
}

abstract class OnExpandPressed implements SingleReservationEvent {
  const factory OnExpandPressed() = _$OnExpandPressed;
}

/// @nodoc
abstract class $OnCancelReservationPressedCopyWith<$Res> {
  factory $OnCancelReservationPressedCopyWith(OnCancelReservationPressed value,
          $Res Function(OnCancelReservationPressed) then) =
      _$OnCancelReservationPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCancelReservationPressedCopyWithImpl<$Res>
    extends _$SingleReservationEventCopyWithImpl<$Res>
    implements $OnCancelReservationPressedCopyWith<$Res> {
  _$OnCancelReservationPressedCopyWithImpl(OnCancelReservationPressed _value,
      $Res Function(OnCancelReservationPressed) _then)
      : super(_value, (v) => _then(v as OnCancelReservationPressed));

  @override
  OnCancelReservationPressed get _value =>
      super._value as OnCancelReservationPressed;
}

/// @nodoc

class _$OnCancelReservationPressed implements OnCancelReservationPressed {
  const _$OnCancelReservationPressed();

  @override
  String toString() {
    return 'SingleReservationEvent.onCancelReservationPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCancelReservationPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation resservation) started,
    required TResult Function(int index) onAcceptPressed,
    required TResult Function(int index) onCancelPressed,
    required TResult Function() onAcceptErrorDisplayed,
    required TResult Function() onCancelErrorDisplayed,
    required TResult Function() onExpandPressed,
    required TResult Function() onCancelReservationPressed,
  }) {
    return onCancelReservationPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation resservation)? started,
    TResult Function(int index)? onAcceptPressed,
    TResult Function(int index)? onCancelPressed,
    TResult Function()? onAcceptErrorDisplayed,
    TResult Function()? onCancelErrorDisplayed,
    TResult Function()? onExpandPressed,
    TResult Function()? onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelReservationPressed != null) {
      return onCancelReservationPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnAcceptPressed value) onAcceptPressed,
    required TResult Function(OnCancelPressed value) onCancelPressed,
    required TResult Function(OnAcceptErrorDisplayed value)
        onAcceptErrorDisplayed,
    required TResult Function(OnCancelErrorDisplayed value)
        onCancelErrorDisplayed,
    required TResult Function(OnExpandPressed value) onExpandPressed,
    required TResult Function(OnCancelReservationPressed value)
        onCancelReservationPressed,
  }) {
    return onCancelReservationPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnAcceptPressed value)? onAcceptPressed,
    TResult Function(OnCancelPressed value)? onCancelPressed,
    TResult Function(OnAcceptErrorDisplayed value)? onAcceptErrorDisplayed,
    TResult Function(OnCancelErrorDisplayed value)? onCancelErrorDisplayed,
    TResult Function(OnExpandPressed value)? onExpandPressed,
    TResult Function(OnCancelReservationPressed value)?
        onCancelReservationPressed,
    required TResult orElse(),
  }) {
    if (onCancelReservationPressed != null) {
      return onCancelReservationPressed(this);
    }
    return orElse();
  }
}

abstract class OnCancelReservationPressed implements SingleReservationEvent {
  const factory OnCancelReservationPressed() = _$OnCancelReservationPressed;
}

/// @nodoc
class _$SingleReservationStateTearOff {
  const _$SingleReservationStateTearOff();

  _SingleReservationState call(
      {required Reservation? reservation,
      required bool showAcceptError,
      required bool showCancelItemError,
      required bool canceling,
      required Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess,
      required Either<ReservationFailure, Unit>? cancelFailureOrSuccess}) {
    return _SingleReservationState(
      reservation: reservation,
      showAcceptError: showAcceptError,
      showCancelItemError: showCancelItemError,
      canceling: canceling,
      adFailureOrSuccess: adFailureOrSuccess,
      cancelFailureOrSuccess: cancelFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SingleReservationState = _$SingleReservationStateTearOff();

/// @nodoc
mixin _$SingleReservationState {
  Reservation? get reservation => throw _privateConstructorUsedError;
  bool get showAcceptError => throw _privateConstructorUsedError;
  bool get showCancelItemError => throw _privateConstructorUsedError;
  bool get canceling => throw _privateConstructorUsedError;
  Either<AdvertisementFailure, Advertisement>? get adFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<ReservationFailure, Unit>? get cancelFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleReservationStateCopyWith<SingleReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleReservationStateCopyWith<$Res> {
  factory $SingleReservationStateCopyWith(SingleReservationState value,
          $Res Function(SingleReservationState) then) =
      _$SingleReservationStateCopyWithImpl<$Res>;
  $Res call(
      {Reservation? reservation,
      bool showAcceptError,
      bool showCancelItemError,
      bool canceling,
      Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess,
      Either<ReservationFailure, Unit>? cancelFailureOrSuccess});

  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class _$SingleReservationStateCopyWithImpl<$Res>
    implements $SingleReservationStateCopyWith<$Res> {
  _$SingleReservationStateCopyWithImpl(this._value, this._then);

  final SingleReservationState _value;
  // ignore: unused_field
  final $Res Function(SingleReservationState) _then;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? showAcceptError = freezed,
    Object? showCancelItemError = freezed,
    Object? canceling = freezed,
    Object? adFailureOrSuccess = freezed,
    Object? cancelFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      showAcceptError: showAcceptError == freezed
          ? _value.showAcceptError
          : showAcceptError // ignore: cast_nullable_to_non_nullable
              as bool,
      showCancelItemError: showCancelItemError == freezed
          ? _value.showCancelItemError
          : showCancelItemError // ignore: cast_nullable_to_non_nullable
              as bool,
      canceling: canceling == freezed
          ? _value.canceling
          : canceling // ignore: cast_nullable_to_non_nullable
              as bool,
      adFailureOrSuccess: adFailureOrSuccess == freezed
          ? _value.adFailureOrSuccess
          : adFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, Advertisement>?,
      cancelFailureOrSuccess: cancelFailureOrSuccess == freezed
          ? _value.cancelFailureOrSuccess
          : cancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, Unit>?,
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
abstract class _$SingleReservationStateCopyWith<$Res>
    implements $SingleReservationStateCopyWith<$Res> {
  factory _$SingleReservationStateCopyWith(_SingleReservationState value,
          $Res Function(_SingleReservationState) then) =
      __$SingleReservationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Reservation? reservation,
      bool showAcceptError,
      bool showCancelItemError,
      bool canceling,
      Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess,
      Either<ReservationFailure, Unit>? cancelFailureOrSuccess});

  @override
  $ReservationCopyWith<$Res>? get reservation;
}

/// @nodoc
class __$SingleReservationStateCopyWithImpl<$Res>
    extends _$SingleReservationStateCopyWithImpl<$Res>
    implements _$SingleReservationStateCopyWith<$Res> {
  __$SingleReservationStateCopyWithImpl(_SingleReservationState _value,
      $Res Function(_SingleReservationState) _then)
      : super(_value, (v) => _then(v as _SingleReservationState));

  @override
  _SingleReservationState get _value => super._value as _SingleReservationState;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? showAcceptError = freezed,
    Object? showCancelItemError = freezed,
    Object? canceling = freezed,
    Object? adFailureOrSuccess = freezed,
    Object? cancelFailureOrSuccess = freezed,
  }) {
    return _then(_SingleReservationState(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation?,
      showAcceptError: showAcceptError == freezed
          ? _value.showAcceptError
          : showAcceptError // ignore: cast_nullable_to_non_nullable
              as bool,
      showCancelItemError: showCancelItemError == freezed
          ? _value.showCancelItemError
          : showCancelItemError // ignore: cast_nullable_to_non_nullable
              as bool,
      canceling: canceling == freezed
          ? _value.canceling
          : canceling // ignore: cast_nullable_to_non_nullable
              as bool,
      adFailureOrSuccess: adFailureOrSuccess == freezed
          ? _value.adFailureOrSuccess
          : adFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, Advertisement>?,
      cancelFailureOrSuccess: cancelFailureOrSuccess == freezed
          ? _value.cancelFailureOrSuccess
          : cancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_SingleReservationState implements _SingleReservationState {
  const _$_SingleReservationState(
      {required this.reservation,
      required this.showAcceptError,
      required this.showCancelItemError,
      required this.canceling,
      required this.adFailureOrSuccess,
      required this.cancelFailureOrSuccess});

  @override
  final Reservation? reservation;
  @override
  final bool showAcceptError;
  @override
  final bool showCancelItemError;
  @override
  final bool canceling;
  @override
  final Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess;
  @override
  final Either<ReservationFailure, Unit>? cancelFailureOrSuccess;

  @override
  String toString() {
    return 'SingleReservationState(reservation: $reservation, showAcceptError: $showAcceptError, showCancelItemError: $showCancelItemError, canceling: $canceling, adFailureOrSuccess: $adFailureOrSuccess, cancelFailureOrSuccess: $cancelFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleReservationState &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)) &&
            (identical(other.showAcceptError, showAcceptError) ||
                const DeepCollectionEquality()
                    .equals(other.showAcceptError, showAcceptError)) &&
            (identical(other.showCancelItemError, showCancelItemError) ||
                const DeepCollectionEquality()
                    .equals(other.showCancelItemError, showCancelItemError)) &&
            (identical(other.canceling, canceling) ||
                const DeepCollectionEquality()
                    .equals(other.canceling, canceling)) &&
            (identical(other.adFailureOrSuccess, adFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.adFailureOrSuccess, adFailureOrSuccess)) &&
            (identical(other.cancelFailureOrSuccess, cancelFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.cancelFailureOrSuccess, cancelFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservation) ^
      const DeepCollectionEquality().hash(showAcceptError) ^
      const DeepCollectionEquality().hash(showCancelItemError) ^
      const DeepCollectionEquality().hash(canceling) ^
      const DeepCollectionEquality().hash(adFailureOrSuccess) ^
      const DeepCollectionEquality().hash(cancelFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SingleReservationStateCopyWith<_SingleReservationState> get copyWith =>
      __$SingleReservationStateCopyWithImpl<_SingleReservationState>(
          this, _$identity);
}

abstract class _SingleReservationState implements SingleReservationState {
  const factory _SingleReservationState(
      {required Reservation? reservation,
      required bool showAcceptError,
      required bool showCancelItemError,
      required bool canceling,
      required Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess,
      required Either<ReservationFailure, Unit>?
          cancelFailureOrSuccess}) = _$_SingleReservationState;

  @override
  Reservation? get reservation => throw _privateConstructorUsedError;
  @override
  bool get showAcceptError => throw _privateConstructorUsedError;
  @override
  bool get showCancelItemError => throw _privateConstructorUsedError;
  @override
  bool get canceling => throw _privateConstructorUsedError;
  @override
  Either<AdvertisementFailure, Advertisement>? get adFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Either<ReservationFailure, Unit>? get cancelFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleReservationStateCopyWith<_SingleReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}
