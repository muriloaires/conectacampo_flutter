// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductPageEventTearOff {
  const _$ProductPageEventTearOff();

  _Started started() {
    return const _Started();
  }

  AmmountChanged ammountChanged(int ammount) {
    return AmmountChanged(
      ammount,
    );
  }

  OnBtnReservationTap onBtnReservationTap() {
    return const OnBtnReservationTap();
  }
}

/// @nodoc
const $ProductPageEvent = _$ProductPageEventTearOff();

/// @nodoc
mixin _$ProductPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int ammount) ammountChanged,
    required TResult Function() onBtnReservationTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int ammount)? ammountChanged,
    TResult Function()? onBtnReservationTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmmountChanged value) ammountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmmountChanged value)? ammountChanged,
    TResult Function(OnBtnReservationTap value)? onBtnReservationTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageEventCopyWith<$Res> {
  factory $ProductPageEventCopyWith(
          ProductPageEvent value, $Res Function(ProductPageEvent) then) =
      _$ProductPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductPageEventCopyWithImpl<$Res>
    implements $ProductPageEventCopyWith<$Res> {
  _$ProductPageEventCopyWithImpl(this._value, this._then);

  final ProductPageEvent _value;
  // ignore: unused_field
  final $Res Function(ProductPageEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProductPageEventCopyWithImpl<$Res>
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
    return 'ProductPageEvent.started()';
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
    required TResult Function(int ammount) ammountChanged,
    required TResult Function() onBtnReservationTap,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int ammount)? ammountChanged,
    TResult Function()? onBtnReservationTap,
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
    required TResult Function(AmmountChanged value) ammountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmmountChanged value)? ammountChanged,
    TResult Function(OnBtnReservationTap value)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductPageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $AmmountChangedCopyWith<$Res> {
  factory $AmmountChangedCopyWith(
          AmmountChanged value, $Res Function(AmmountChanged) then) =
      _$AmmountChangedCopyWithImpl<$Res>;
  $Res call({int ammount});
}

/// @nodoc
class _$AmmountChangedCopyWithImpl<$Res>
    extends _$ProductPageEventCopyWithImpl<$Res>
    implements $AmmountChangedCopyWith<$Res> {
  _$AmmountChangedCopyWithImpl(
      AmmountChanged _value, $Res Function(AmmountChanged) _then)
      : super(_value, (v) => _then(v as AmmountChanged));

  @override
  AmmountChanged get _value => super._value as AmmountChanged;

  @override
  $Res call({
    Object? ammount = freezed,
  }) {
    return _then(AmmountChanged(
      ammount == freezed
          ? _value.ammount
          : ammount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AmmountChanged implements AmmountChanged {
  const _$AmmountChanged(this.ammount);

  @override
  final int ammount;

  @override
  String toString() {
    return 'ProductPageEvent.ammountChanged(ammount: $ammount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmmountChanged &&
            (identical(other.ammount, ammount) ||
                const DeepCollectionEquality().equals(other.ammount, ammount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ammount);

  @JsonKey(ignore: true)
  @override
  $AmmountChangedCopyWith<AmmountChanged> get copyWith =>
      _$AmmountChangedCopyWithImpl<AmmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int ammount) ammountChanged,
    required TResult Function() onBtnReservationTap,
  }) {
    return ammountChanged(ammount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int ammount)? ammountChanged,
    TResult Function()? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (ammountChanged != null) {
      return ammountChanged(ammount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmmountChanged value) ammountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return ammountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmmountChanged value)? ammountChanged,
    TResult Function(OnBtnReservationTap value)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (ammountChanged != null) {
      return ammountChanged(this);
    }
    return orElse();
  }
}

abstract class AmmountChanged implements ProductPageEvent {
  const factory AmmountChanged(int ammount) = _$AmmountChanged;

  int get ammount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmountChangedCopyWith<AmmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnReservationTapCopyWith<$Res> {
  factory $OnBtnReservationTapCopyWith(
          OnBtnReservationTap value, $Res Function(OnBtnReservationTap) then) =
      _$OnBtnReservationTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnReservationTapCopyWithImpl<$Res>
    extends _$ProductPageEventCopyWithImpl<$Res>
    implements $OnBtnReservationTapCopyWith<$Res> {
  _$OnBtnReservationTapCopyWithImpl(
      OnBtnReservationTap _value, $Res Function(OnBtnReservationTap) _then)
      : super(_value, (v) => _then(v as OnBtnReservationTap));

  @override
  OnBtnReservationTap get _value => super._value as OnBtnReservationTap;
}

/// @nodoc

class _$OnBtnReservationTap implements OnBtnReservationTap {
  const _$OnBtnReservationTap();

  @override
  String toString() {
    return 'ProductPageEvent.onBtnReservationTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnReservationTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int ammount) ammountChanged,
    required TResult Function() onBtnReservationTap,
  }) {
    return onBtnReservationTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int ammount)? ammountChanged,
    TResult Function()? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (onBtnReservationTap != null) {
      return onBtnReservationTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmmountChanged value) ammountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return onBtnReservationTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmmountChanged value)? ammountChanged,
    TResult Function(OnBtnReservationTap value)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (onBtnReservationTap != null) {
      return onBtnReservationTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnReservationTap implements ProductPageEvent {
  const factory OnBtnReservationTap() = _$OnBtnReservationTap;
}

/// @nodoc
class _$ProductPageStateTearOff {
  const _$ProductPageStateTearOff();

  _ProductPageState call({required bool invalidAmount}) {
    return _ProductPageState(
      invalidAmount: invalidAmount,
    );
  }
}

/// @nodoc
const $ProductPageState = _$ProductPageStateTearOff();

/// @nodoc
mixin _$ProductPageState {
  bool get invalidAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPageStateCopyWith<ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageStateCopyWith<$Res> {
  factory $ProductPageStateCopyWith(
          ProductPageState value, $Res Function(ProductPageState) then) =
      _$ProductPageStateCopyWithImpl<$Res>;
  $Res call({bool invalidAmount});
}

/// @nodoc
class _$ProductPageStateCopyWithImpl<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  _$ProductPageStateCopyWithImpl(this._value, this._then);

  final ProductPageState _value;
  // ignore: unused_field
  final $Res Function(ProductPageState) _then;

  @override
  $Res call({
    Object? invalidAmount = freezed,
  }) {
    return _then(_value.copyWith(
      invalidAmount: invalidAmount == freezed
          ? _value.invalidAmount
          : invalidAmount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ProductPageStateCopyWith<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  factory _$ProductPageStateCopyWith(
          _ProductPageState value, $Res Function(_ProductPageState) then) =
      __$ProductPageStateCopyWithImpl<$Res>;
  @override
  $Res call({bool invalidAmount});
}

/// @nodoc
class __$ProductPageStateCopyWithImpl<$Res>
    extends _$ProductPageStateCopyWithImpl<$Res>
    implements _$ProductPageStateCopyWith<$Res> {
  __$ProductPageStateCopyWithImpl(
      _ProductPageState _value, $Res Function(_ProductPageState) _then)
      : super(_value, (v) => _then(v as _ProductPageState));

  @override
  _ProductPageState get _value => super._value as _ProductPageState;

  @override
  $Res call({
    Object? invalidAmount = freezed,
  }) {
    return _then(_ProductPageState(
      invalidAmount: invalidAmount == freezed
          ? _value.invalidAmount
          : invalidAmount // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductPageState implements _ProductPageState {
  const _$_ProductPageState({required this.invalidAmount});

  @override
  final bool invalidAmount;

  @override
  String toString() {
    return 'ProductPageState(invalidAmount: $invalidAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductPageState &&
            (identical(other.invalidAmount, invalidAmount) ||
                const DeepCollectionEquality()
                    .equals(other.invalidAmount, invalidAmount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(invalidAmount);

  @JsonKey(ignore: true)
  @override
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      __$ProductPageStateCopyWithImpl<_ProductPageState>(this, _$identity);
}

abstract class _ProductPageState implements ProductPageState {
  const factory _ProductPageState({required bool invalidAmount}) =
      _$_ProductPageState;

  @override
  bool get invalidAmount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
