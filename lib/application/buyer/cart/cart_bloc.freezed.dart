// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CartEventTearOff {
  const _$CartEventTearOff();

  _Started started() {
    return const _Started();
  }

  OnBtnDeleteTap onBtnDeleteTap(ReservationItem reservationItem) {
    return OnBtnDeleteTap(
      reservationItem,
    );
  }

  QuantityChanged quantityChanged(
      ReservationItem reservationItem, String value) {
    return QuantityChanged(
      reservationItem,
      value,
    );
  }
}

/// @nodoc
const $CartEvent = _$CartEventTearOff();

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ReservationItem reservationItem) onBtnDeleteTap,
    required TResult Function(ReservationItem reservationItem, String value)
        quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReservationItem reservationItem)? onBtnDeleteTap,
    TResult Function(ReservationItem reservationItem, String value)?
        quantityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnDeleteTap value) onBtnDeleteTap,
    required TResult Function(QuantityChanged value) quantityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnDeleteTap value)? onBtnDeleteTap,
    TResult Function(QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res> implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  final CartEvent _value;
  // ignore: unused_field
  final $Res Function(CartEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
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
    return 'CartEvent.started()';
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
    required TResult Function(ReservationItem reservationItem) onBtnDeleteTap,
    required TResult Function(ReservationItem reservationItem, String value)
        quantityChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReservationItem reservationItem)? onBtnDeleteTap,
    TResult Function(ReservationItem reservationItem, String value)?
        quantityChanged,
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
    required TResult Function(OnBtnDeleteTap value) onBtnDeleteTap,
    required TResult Function(QuantityChanged value) quantityChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnDeleteTap value)? onBtnDeleteTap,
    TResult Function(QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $OnBtnDeleteTapCopyWith<$Res> {
  factory $OnBtnDeleteTapCopyWith(
          OnBtnDeleteTap value, $Res Function(OnBtnDeleteTap) then) =
      _$OnBtnDeleteTapCopyWithImpl<$Res>;
  $Res call({ReservationItem reservationItem});

  $ReservationItemCopyWith<$Res> get reservationItem;
}

/// @nodoc
class _$OnBtnDeleteTapCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $OnBtnDeleteTapCopyWith<$Res> {
  _$OnBtnDeleteTapCopyWithImpl(
      OnBtnDeleteTap _value, $Res Function(OnBtnDeleteTap) _then)
      : super(_value, (v) => _then(v as OnBtnDeleteTap));

  @override
  OnBtnDeleteTap get _value => super._value as OnBtnDeleteTap;

  @override
  $Res call({
    Object? reservationItem = freezed,
  }) {
    return _then(OnBtnDeleteTap(
      reservationItem == freezed
          ? _value.reservationItem
          : reservationItem // ignore: cast_nullable_to_non_nullable
              as ReservationItem,
    ));
  }

  @override
  $ReservationItemCopyWith<$Res> get reservationItem {
    return $ReservationItemCopyWith<$Res>(_value.reservationItem, (value) {
      return _then(_value.copyWith(reservationItem: value));
    });
  }
}

/// @nodoc

class _$OnBtnDeleteTap implements OnBtnDeleteTap {
  const _$OnBtnDeleteTap(this.reservationItem);

  @override
  final ReservationItem reservationItem;

  @override
  String toString() {
    return 'CartEvent.onBtnDeleteTap(reservationItem: $reservationItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBtnDeleteTap &&
            (identical(other.reservationItem, reservationItem) ||
                const DeepCollectionEquality()
                    .equals(other.reservationItem, reservationItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservationItem);

  @JsonKey(ignore: true)
  @override
  $OnBtnDeleteTapCopyWith<OnBtnDeleteTap> get copyWith =>
      _$OnBtnDeleteTapCopyWithImpl<OnBtnDeleteTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ReservationItem reservationItem) onBtnDeleteTap,
    required TResult Function(ReservationItem reservationItem, String value)
        quantityChanged,
  }) {
    return onBtnDeleteTap(reservationItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReservationItem reservationItem)? onBtnDeleteTap,
    TResult Function(ReservationItem reservationItem, String value)?
        quantityChanged,
    required TResult orElse(),
  }) {
    if (onBtnDeleteTap != null) {
      return onBtnDeleteTap(reservationItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnDeleteTap value) onBtnDeleteTap,
    required TResult Function(QuantityChanged value) quantityChanged,
  }) {
    return onBtnDeleteTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnDeleteTap value)? onBtnDeleteTap,
    TResult Function(QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (onBtnDeleteTap != null) {
      return onBtnDeleteTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnDeleteTap implements CartEvent {
  const factory OnBtnDeleteTap(ReservationItem reservationItem) =
      _$OnBtnDeleteTap;

  ReservationItem get reservationItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBtnDeleteTapCopyWith<OnBtnDeleteTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityChangedCopyWith<$Res> {
  factory $QuantityChangedCopyWith(
          QuantityChanged value, $Res Function(QuantityChanged) then) =
      _$QuantityChangedCopyWithImpl<$Res>;
  $Res call({ReservationItem reservationItem, String value});

  $ReservationItemCopyWith<$Res> get reservationItem;
}

/// @nodoc
class _$QuantityChangedCopyWithImpl<$Res> extends _$CartEventCopyWithImpl<$Res>
    implements $QuantityChangedCopyWith<$Res> {
  _$QuantityChangedCopyWithImpl(
      QuantityChanged _value, $Res Function(QuantityChanged) _then)
      : super(_value, (v) => _then(v as QuantityChanged));

  @override
  QuantityChanged get _value => super._value as QuantityChanged;

  @override
  $Res call({
    Object? reservationItem = freezed,
    Object? value = freezed,
  }) {
    return _then(QuantityChanged(
      reservationItem == freezed
          ? _value.reservationItem
          : reservationItem // ignore: cast_nullable_to_non_nullable
              as ReservationItem,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ReservationItemCopyWith<$Res> get reservationItem {
    return $ReservationItemCopyWith<$Res>(_value.reservationItem, (value) {
      return _then(_value.copyWith(reservationItem: value));
    });
  }
}

/// @nodoc

class _$QuantityChanged implements QuantityChanged {
  const _$QuantityChanged(this.reservationItem, this.value);

  @override
  final ReservationItem reservationItem;
  @override
  final String value;

  @override
  String toString() {
    return 'CartEvent.quantityChanged(reservationItem: $reservationItem, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuantityChanged &&
            (identical(other.reservationItem, reservationItem) ||
                const DeepCollectionEquality()
                    .equals(other.reservationItem, reservationItem)) &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservationItem) ^
      const DeepCollectionEquality().hash(value);

  @JsonKey(ignore: true)
  @override
  $QuantityChangedCopyWith<QuantityChanged> get copyWith =>
      _$QuantityChangedCopyWithImpl<QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ReservationItem reservationItem) onBtnDeleteTap,
    required TResult Function(ReservationItem reservationItem, String value)
        quantityChanged,
  }) {
    return quantityChanged(reservationItem, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReservationItem reservationItem)? onBtnDeleteTap,
    TResult Function(ReservationItem reservationItem, String value)?
        quantityChanged,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(reservationItem, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnDeleteTap value) onBtnDeleteTap,
    required TResult Function(QuantityChanged value) quantityChanged,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnDeleteTap value)? onBtnDeleteTap,
    TResult Function(QuantityChanged value)? quantityChanged,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class QuantityChanged implements CartEvent {
  const factory QuantityChanged(ReservationItem reservationItem, String value) =
      _$QuantityChanged;

  ReservationItem get reservationItem => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityChangedCopyWith<QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CartStateTearOff {
  const _$CartStateTearOff();

  _CartState call({required List<ReservationItem> itemsInCart}) {
    return _CartState(
      itemsInCart: itemsInCart,
    );
  }
}

/// @nodoc
const $CartState = _$CartStateTearOff();

/// @nodoc
mixin _$CartState {
  List<ReservationItem> get itemsInCart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res>;
  $Res call({List<ReservationItem> itemsInCart});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res> implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  final CartState _value;
  // ignore: unused_field
  final $Res Function(CartState) _then;

  @override
  $Res call({
    Object? itemsInCart = freezed,
  }) {
    return _then(_value.copyWith(
      itemsInCart: itemsInCart == freezed
          ? _value.itemsInCart
          : itemsInCart // ignore: cast_nullable_to_non_nullable
              as List<ReservationItem>,
    ));
  }
}

/// @nodoc
abstract class _$CartStateCopyWith<$Res> implements $CartStateCopyWith<$Res> {
  factory _$CartStateCopyWith(
          _CartState value, $Res Function(_CartState) then) =
      __$CartStateCopyWithImpl<$Res>;
  @override
  $Res call({List<ReservationItem> itemsInCart});
}

/// @nodoc
class __$CartStateCopyWithImpl<$Res> extends _$CartStateCopyWithImpl<$Res>
    implements _$CartStateCopyWith<$Res> {
  __$CartStateCopyWithImpl(_CartState _value, $Res Function(_CartState) _then)
      : super(_value, (v) => _then(v as _CartState));

  @override
  _CartState get _value => super._value as _CartState;

  @override
  $Res call({
    Object? itemsInCart = freezed,
  }) {
    return _then(_CartState(
      itemsInCart: itemsInCart == freezed
          ? _value.itemsInCart
          : itemsInCart // ignore: cast_nullable_to_non_nullable
              as List<ReservationItem>,
    ));
  }
}

/// @nodoc

class _$_CartState implements _CartState {
  const _$_CartState({required this.itemsInCart});

  @override
  final List<ReservationItem> itemsInCart;

  @override
  String toString() {
    return 'CartState(itemsInCart: $itemsInCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CartState &&
            (identical(other.itemsInCart, itemsInCart) ||
                const DeepCollectionEquality()
                    .equals(other.itemsInCart, itemsInCart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemsInCart);

  @JsonKey(ignore: true)
  @override
  _$CartStateCopyWith<_CartState> get copyWith =>
      __$CartStateCopyWithImpl<_CartState>(this, _$identity);
}

abstract class _CartState implements CartState {
  const factory _CartState({required List<ReservationItem> itemsInCart}) =
      _$_CartState;

  @override
  List<ReservationItem> get itemsInCart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CartStateCopyWith<_CartState> get copyWith =>
      throw _privateConstructorUsedError;
}
