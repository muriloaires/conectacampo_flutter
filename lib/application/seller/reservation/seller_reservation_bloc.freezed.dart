// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seller_reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SellerReservationEventTearOff {
  const _$SellerReservationEventTearOff();

  _Started started(Reservation reservation) {
    return _Started(
      reservation,
    );
  }

  Finish finish() {
    return const Finish();
  }

  QuantityEdited quantityEdited(int index, int newQuantity) {
    return QuantityEdited(
      index,
      newQuantity,
    );
  }
}

/// @nodoc
const $SellerReservationEvent = _$SellerReservationEventTearOff();

/// @nodoc
mixin _$SellerReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerReservationEventCopyWith<$Res> {
  factory $SellerReservationEventCopyWith(SellerReservationEvent value,
          $Res Function(SellerReservationEvent) then) =
      _$SellerReservationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SellerReservationEventCopyWithImpl<$Res>
    implements $SellerReservationEventCopyWith<$Res> {
  _$SellerReservationEventCopyWithImpl(this._value, this._then);

  final SellerReservationEvent _value;
  // ignore: unused_field
  final $Res Function(SellerReservationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Reservation reservation});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(_Started(
      reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }

  @override
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'SellerReservationEvent.started(reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reservation);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
  }) {
    return started(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SellerReservationEvent {
  const factory _Started(Reservation reservation) = _$_Started;

  Reservation get reservation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FinishCopyWith<$Res> {
  factory $FinishCopyWith(Finish value, $Res Function(Finish) then) =
      _$FinishCopyWithImpl<$Res>;
}

/// @nodoc
class _$FinishCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $FinishCopyWith<$Res> {
  _$FinishCopyWithImpl(Finish _value, $Res Function(Finish) _then)
      : super(_value, (v) => _then(v as Finish));

  @override
  Finish get _value => super._value as Finish;
}

/// @nodoc

class _$Finish implements Finish {
  const _$Finish();

  @override
  String toString() {
    return 'SellerReservationEvent.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Finish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class Finish implements SellerReservationEvent {
  const factory Finish() = _$Finish;
}

/// @nodoc
abstract class $QuantityEditedCopyWith<$Res> {
  factory $QuantityEditedCopyWith(
          QuantityEdited value, $Res Function(QuantityEdited) then) =
      _$QuantityEditedCopyWithImpl<$Res>;
  $Res call({int index, int newQuantity});
}

/// @nodoc
class _$QuantityEditedCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $QuantityEditedCopyWith<$Res> {
  _$QuantityEditedCopyWithImpl(
      QuantityEdited _value, $Res Function(QuantityEdited) _then)
      : super(_value, (v) => _then(v as QuantityEdited));

  @override
  QuantityEdited get _value => super._value as QuantityEdited;

  @override
  $Res call({
    Object? index = freezed,
    Object? newQuantity = freezed,
  }) {
    return _then(QuantityEdited(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      newQuantity == freezed
          ? _value.newQuantity
          : newQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuantityEdited implements QuantityEdited {
  _$QuantityEdited(this.index, this.newQuantity);

  @override
  final int index;
  @override
  final int newQuantity;

  @override
  String toString() {
    return 'SellerReservationEvent.quantityEdited(index: $index, newQuantity: $newQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuantityEdited &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.newQuantity, newQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.newQuantity, newQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(newQuantity);

  @JsonKey(ignore: true)
  @override
  $QuantityEditedCopyWith<QuantityEdited> get copyWith =>
      _$QuantityEditedCopyWithImpl<QuantityEdited>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
  }) {
    return quantityEdited(index, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    required TResult orElse(),
  }) {
    if (quantityEdited != null) {
      return quantityEdited(index, newQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
  }) {
    return quantityEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    required TResult orElse(),
  }) {
    if (quantityEdited != null) {
      return quantityEdited(this);
    }
    return orElse();
  }
}

abstract class QuantityEdited implements SellerReservationEvent {
  factory QuantityEdited(int index, int newQuantity) = _$QuantityEdited;

  int get index => throw _privateConstructorUsedError;
  int get newQuantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityEditedCopyWith<QuantityEdited> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SellerReservationStateTearOff {
  const _$SellerReservationStateTearOff();

  _SellerReservationState call(
      {required Reservation reservation, required bool update}) {
    return _SellerReservationState(
      reservation: reservation,
      update: update,
    );
  }
}

/// @nodoc
const $SellerReservationState = _$SellerReservationStateTearOff();

/// @nodoc
mixin _$SellerReservationState {
  Reservation get reservation => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerReservationStateCopyWith<SellerReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerReservationStateCopyWith<$Res> {
  factory $SellerReservationStateCopyWith(SellerReservationState value,
          $Res Function(SellerReservationState) then) =
      _$SellerReservationStateCopyWithImpl<$Res>;
  $Res call({Reservation reservation, bool update});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class _$SellerReservationStateCopyWithImpl<$Res>
    implements $SellerReservationStateCopyWith<$Res> {
  _$SellerReservationStateCopyWithImpl(this._value, this._then);

  final SellerReservationState _value;
  // ignore: unused_field
  final $Res Function(SellerReservationState) _then;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? update = freezed,
  }) {
    return _then(_value.copyWith(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc
abstract class _$SellerReservationStateCopyWith<$Res>
    implements $SellerReservationStateCopyWith<$Res> {
  factory _$SellerReservationStateCopyWith(_SellerReservationState value,
          $Res Function(_SellerReservationState) then) =
      __$SellerReservationStateCopyWithImpl<$Res>;
  @override
  $Res call({Reservation reservation, bool update});

  @override
  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$SellerReservationStateCopyWithImpl<$Res>
    extends _$SellerReservationStateCopyWithImpl<$Res>
    implements _$SellerReservationStateCopyWith<$Res> {
  __$SellerReservationStateCopyWithImpl(_SellerReservationState _value,
      $Res Function(_SellerReservationState) _then)
      : super(_value, (v) => _then(v as _SellerReservationState));

  @override
  _SellerReservationState get _value => super._value as _SellerReservationState;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? update = freezed,
  }) {
    return _then(_SellerReservationState(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      update: update == freezed
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SellerReservationState implements _SellerReservationState {
  const _$_SellerReservationState(
      {required this.reservation, required this.update});

  @override
  final Reservation reservation;
  @override
  final bool update;

  @override
  String toString() {
    return 'SellerReservationState(reservation: $reservation, update: $update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerReservationState &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)) &&
            (identical(other.update, update) ||
                const DeepCollectionEquality().equals(other.update, update)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservation) ^
      const DeepCollectionEquality().hash(update);

  @JsonKey(ignore: true)
  @override
  _$SellerReservationStateCopyWith<_SellerReservationState> get copyWith =>
      __$SellerReservationStateCopyWithImpl<_SellerReservationState>(
          this, _$identity);
}

abstract class _SellerReservationState implements SellerReservationState {
  const factory _SellerReservationState(
      {required Reservation reservation,
      required bool update}) = _$_SellerReservationState;

  @override
  Reservation get reservation => throw _privateConstructorUsedError;
  @override
  bool get update => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerReservationStateCopyWith<_SellerReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}
