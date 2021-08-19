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

  ItemRemoved itemRemoved(int index) {
    return ItemRemoved(
      index,
    );
  }

  OnConfirm onConfirm() {
    return const OnConfirm();
  }

  OnConfirmPayment onConfirmPayment() {
    return const OnConfirmPayment();
  }

  OnCancel onCancel() {
    return const OnCancel();
  }

  ShowItemsTapped showItemsTapped() {
    return const ShowItemsTapped();
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
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
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
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return started(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
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
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
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
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
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
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
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
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return quantityEdited(index, newQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
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
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return quantityEdited(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
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
abstract class $ItemRemovedCopyWith<$Res> {
  factory $ItemRemovedCopyWith(
          ItemRemoved value, $Res Function(ItemRemoved) then) =
      _$ItemRemovedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$ItemRemovedCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $ItemRemovedCopyWith<$Res> {
  _$ItemRemovedCopyWithImpl(
      ItemRemoved _value, $Res Function(ItemRemoved) _then)
      : super(_value, (v) => _then(v as ItemRemoved));

  @override
  ItemRemoved get _value => super._value as ItemRemoved;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(ItemRemoved(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemRemoved implements ItemRemoved {
  _$ItemRemoved(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SellerReservationEvent.itemRemoved(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItemRemoved &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $ItemRemovedCopyWith<ItemRemoved> get copyWith =>
      _$ItemRemovedCopyWithImpl<ItemRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return itemRemoved(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class ItemRemoved implements SellerReservationEvent {
  factory ItemRemoved(int index) = _$ItemRemoved;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemRemovedCopyWith<ItemRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnConfirmCopyWith<$Res> {
  factory $OnConfirmCopyWith(OnConfirm value, $Res Function(OnConfirm) then) =
      _$OnConfirmCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnConfirmCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $OnConfirmCopyWith<$Res> {
  _$OnConfirmCopyWithImpl(OnConfirm _value, $Res Function(OnConfirm) _then)
      : super(_value, (v) => _then(v as OnConfirm));

  @override
  OnConfirm get _value => super._value as OnConfirm;
}

/// @nodoc

class _$OnConfirm implements OnConfirm {
  const _$OnConfirm();

  @override
  String toString() {
    return 'SellerReservationEvent.onConfirm()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnConfirm);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return onConfirm();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onConfirm != null) {
      return onConfirm();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return onConfirm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onConfirm != null) {
      return onConfirm(this);
    }
    return orElse();
  }
}

abstract class OnConfirm implements SellerReservationEvent {
  const factory OnConfirm() = _$OnConfirm;
}

/// @nodoc
abstract class $OnConfirmPaymentCopyWith<$Res> {
  factory $OnConfirmPaymentCopyWith(
          OnConfirmPayment value, $Res Function(OnConfirmPayment) then) =
      _$OnConfirmPaymentCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnConfirmPaymentCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $OnConfirmPaymentCopyWith<$Res> {
  _$OnConfirmPaymentCopyWithImpl(
      OnConfirmPayment _value, $Res Function(OnConfirmPayment) _then)
      : super(_value, (v) => _then(v as OnConfirmPayment));

  @override
  OnConfirmPayment get _value => super._value as OnConfirmPayment;
}

/// @nodoc

class _$OnConfirmPayment implements OnConfirmPayment {
  const _$OnConfirmPayment();

  @override
  String toString() {
    return 'SellerReservationEvent.onConfirmPayment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnConfirmPayment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return onConfirmPayment();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onConfirmPayment != null) {
      return onConfirmPayment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return onConfirmPayment(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onConfirmPayment != null) {
      return onConfirmPayment(this);
    }
    return orElse();
  }
}

abstract class OnConfirmPayment implements SellerReservationEvent {
  const factory OnConfirmPayment() = _$OnConfirmPayment;
}

/// @nodoc
abstract class $OnCancelCopyWith<$Res> {
  factory $OnCancelCopyWith(OnCancel value, $Res Function(OnCancel) then) =
      _$OnCancelCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnCancelCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $OnCancelCopyWith<$Res> {
  _$OnCancelCopyWithImpl(OnCancel _value, $Res Function(OnCancel) _then)
      : super(_value, (v) => _then(v as OnCancel));

  @override
  OnCancel get _value => super._value as OnCancel;
}

/// @nodoc

class _$OnCancel implements OnCancel {
  const _$OnCancel();

  @override
  String toString() {
    return 'SellerReservationEvent.onCancel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnCancel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return onCancel();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return onCancel(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    required TResult orElse(),
  }) {
    if (onCancel != null) {
      return onCancel(this);
    }
    return orElse();
  }
}

abstract class OnCancel implements SellerReservationEvent {
  const factory OnCancel() = _$OnCancel;
}

/// @nodoc
abstract class $ShowItemsTappedCopyWith<$Res> {
  factory $ShowItemsTappedCopyWith(
          ShowItemsTapped value, $Res Function(ShowItemsTapped) then) =
      _$ShowItemsTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowItemsTappedCopyWithImpl<$Res>
    extends _$SellerReservationEventCopyWithImpl<$Res>
    implements $ShowItemsTappedCopyWith<$Res> {
  _$ShowItemsTappedCopyWithImpl(
      ShowItemsTapped _value, $Res Function(ShowItemsTapped) _then)
      : super(_value, (v) => _then(v as ShowItemsTapped));

  @override
  ShowItemsTapped get _value => super._value as ShowItemsTapped;
}

/// @nodoc

class _$ShowItemsTapped implements ShowItemsTapped {
  const _$ShowItemsTapped();

  @override
  String toString() {
    return 'SellerReservationEvent.showItemsTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ShowItemsTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation) started,
    required TResult Function() finish,
    required TResult Function(int index, int newQuantity) quantityEdited,
    required TResult Function(int index) itemRemoved,
    required TResult Function() onConfirm,
    required TResult Function() onConfirmPayment,
    required TResult Function() onCancel,
    required TResult Function() showItemsTapped,
  }) {
    return showItemsTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation)? started,
    TResult Function()? finish,
    TResult Function(int index, int newQuantity)? quantityEdited,
    TResult Function(int index)? itemRemoved,
    TResult Function()? onConfirm,
    TResult Function()? onConfirmPayment,
    TResult Function()? onCancel,
    TResult Function()? showItemsTapped,
    required TResult orElse(),
  }) {
    if (showItemsTapped != null) {
      return showItemsTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(Finish value) finish,
    required TResult Function(QuantityEdited value) quantityEdited,
    required TResult Function(ItemRemoved value) itemRemoved,
    required TResult Function(OnConfirm value) onConfirm,
    required TResult Function(OnConfirmPayment value) onConfirmPayment,
    required TResult Function(OnCancel value) onCancel,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
  }) {
    return showItemsTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(Finish value)? finish,
    TResult Function(QuantityEdited value)? quantityEdited,
    TResult Function(ItemRemoved value)? itemRemoved,
    TResult Function(OnConfirm value)? onConfirm,
    TResult Function(OnConfirmPayment value)? onConfirmPayment,
    TResult Function(OnCancel value)? onCancel,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    required TResult orElse(),
  }) {
    if (showItemsTapped != null) {
      return showItemsTapped(this);
    }
    return orElse();
  }
}

abstract class ShowItemsTapped implements SellerReservationEvent {
  const factory ShowItemsTapped() = _$ShowItemsTapped;
}

/// @nodoc
class _$SellerReservationStateTearOff {
  const _$SellerReservationStateTearOff();

  _SellerReservationState call(
      {required Reservation reservation,
      required bool update,
      required List<ProductReservation> deletedItems,
      required bool isItemsVisible,
      required bool finishing,
      required bool finished}) {
    return _SellerReservationState(
      reservation: reservation,
      update: update,
      deletedItems: deletedItems,
      isItemsVisible: isItemsVisible,
      finishing: finishing,
      finished: finished,
    );
  }
}

/// @nodoc
const $SellerReservationState = _$SellerReservationStateTearOff();

/// @nodoc
mixin _$SellerReservationState {
  Reservation get reservation => throw _privateConstructorUsedError;
  bool get update => throw _privateConstructorUsedError;
  List<ProductReservation> get deletedItems =>
      throw _privateConstructorUsedError;
  bool get isItemsVisible => throw _privateConstructorUsedError;
  bool get finishing => throw _privateConstructorUsedError;
  bool get finished => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerReservationStateCopyWith<SellerReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerReservationStateCopyWith<$Res> {
  factory $SellerReservationStateCopyWith(SellerReservationState value,
          $Res Function(SellerReservationState) then) =
      _$SellerReservationStateCopyWithImpl<$Res>;
  $Res call(
      {Reservation reservation,
      bool update,
      List<ProductReservation> deletedItems,
      bool isItemsVisible,
      bool finishing,
      bool finished});

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
    Object? deletedItems = freezed,
    Object? isItemsVisible = freezed,
    Object? finishing = freezed,
    Object? finished = freezed,
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
      deletedItems: deletedItems == freezed
          ? _value.deletedItems
          : deletedItems // ignore: cast_nullable_to_non_nullable
              as List<ProductReservation>,
      isItemsVisible: isItemsVisible == freezed
          ? _value.isItemsVisible
          : isItemsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      finishing: finishing == freezed
          ? _value.finishing
          : finishing // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {Reservation reservation,
      bool update,
      List<ProductReservation> deletedItems,
      bool isItemsVisible,
      bool finishing,
      bool finished});

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
    Object? deletedItems = freezed,
    Object? isItemsVisible = freezed,
    Object? finishing = freezed,
    Object? finished = freezed,
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
      deletedItems: deletedItems == freezed
          ? _value.deletedItems
          : deletedItems // ignore: cast_nullable_to_non_nullable
              as List<ProductReservation>,
      isItemsVisible: isItemsVisible == freezed
          ? _value.isItemsVisible
          : isItemsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      finishing: finishing == freezed
          ? _value.finishing
          : finishing // ignore: cast_nullable_to_non_nullable
              as bool,
      finished: finished == freezed
          ? _value.finished
          : finished // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SellerReservationState implements _SellerReservationState {
  const _$_SellerReservationState(
      {required this.reservation,
      required this.update,
      required this.deletedItems,
      required this.isItemsVisible,
      required this.finishing,
      required this.finished});

  @override
  final Reservation reservation;
  @override
  final bool update;
  @override
  final List<ProductReservation> deletedItems;
  @override
  final bool isItemsVisible;
  @override
  final bool finishing;
  @override
  final bool finished;

  @override
  String toString() {
    return 'SellerReservationState(reservation: $reservation, update: $update, deletedItems: $deletedItems, isItemsVisible: $isItemsVisible, finishing: $finishing, finished: $finished)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerReservationState &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)) &&
            (identical(other.update, update) ||
                const DeepCollectionEquality().equals(other.update, update)) &&
            (identical(other.deletedItems, deletedItems) ||
                const DeepCollectionEquality()
                    .equals(other.deletedItems, deletedItems)) &&
            (identical(other.isItemsVisible, isItemsVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isItemsVisible, isItemsVisible)) &&
            (identical(other.finishing, finishing) ||
                const DeepCollectionEquality()
                    .equals(other.finishing, finishing)) &&
            (identical(other.finished, finished) ||
                const DeepCollectionEquality()
                    .equals(other.finished, finished)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservation) ^
      const DeepCollectionEquality().hash(update) ^
      const DeepCollectionEquality().hash(deletedItems) ^
      const DeepCollectionEquality().hash(isItemsVisible) ^
      const DeepCollectionEquality().hash(finishing) ^
      const DeepCollectionEquality().hash(finished);

  @JsonKey(ignore: true)
  @override
  _$SellerReservationStateCopyWith<_SellerReservationState> get copyWith =>
      __$SellerReservationStateCopyWithImpl<_SellerReservationState>(
          this, _$identity);
}

abstract class _SellerReservationState implements SellerReservationState {
  const factory _SellerReservationState(
      {required Reservation reservation,
      required bool update,
      required List<ProductReservation> deletedItems,
      required bool isItemsVisible,
      required bool finishing,
      required bool finished}) = _$_SellerReservationState;

  @override
  Reservation get reservation => throw _privateConstructorUsedError;
  @override
  bool get update => throw _privateConstructorUsedError;
  @override
  List<ProductReservation> get deletedItems =>
      throw _privateConstructorUsedError;
  @override
  bool get isItemsVisible => throw _privateConstructorUsedError;
  @override
  bool get finishing => throw _privateConstructorUsedError;
  @override
  bool get finished => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerReservationStateCopyWith<_SellerReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}
