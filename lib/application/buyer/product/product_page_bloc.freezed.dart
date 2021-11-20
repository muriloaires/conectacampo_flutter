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

  _Started started(AdProduct product) {
    return _Started(
      product,
    );
  }

  AmountChanged amountChanged(String amount) {
    return AmountChanged(
      amount,
    );
  }

  OnBtnReservationTap onBtnReservationTap(AdProduct product) {
    return OnBtnReservationTap(
      product,
    );
  }
}

/// @nodoc
const $ProductPageEvent = _$ProductPageEventTearOff();

/// @nodoc
mixin _$ProductPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
    required TResult Function(String amount) amountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String amount)? amountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmountChanged value)? amountChanged,
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
  $Res call({AdProduct product});

  $AdProductCopyWith<$Res> get product;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ProductPageEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_Started(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }

  @override
  $AdProductCopyWith<$Res> get product {
    return $AdProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.product);

  @override
  final AdProduct product;

  @override
  String toString() {
    return 'ProductPageEvent.started(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
    required TResult Function(String amount) amountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return started(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String amount)? amountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmountChanged value)? amountChanged,
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
  const factory _Started(AdProduct product) = _$_Started;

  AdProduct get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountChangedCopyWith<$Res> {
  factory $AmountChangedCopyWith(
          AmountChanged value, $Res Function(AmountChanged) then) =
      _$AmountChangedCopyWithImpl<$Res>;
  $Res call({String amount});
}

/// @nodoc
class _$AmountChangedCopyWithImpl<$Res>
    extends _$ProductPageEventCopyWithImpl<$Res>
    implements $AmountChangedCopyWith<$Res> {
  _$AmountChangedCopyWithImpl(
      AmountChanged _value, $Res Function(AmountChanged) _then)
      : super(_value, (v) => _then(v as AmountChanged));

  @override
  AmountChanged get _value => super._value as AmountChanged;

  @override
  $Res call({
    Object? amount = freezed,
  }) {
    return _then(AmountChanged(
      amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountChanged implements AmountChanged {
  const _$AmountChanged(this.amount);

  @override
  final String amount;

  @override
  String toString() {
    return 'ProductPageEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AmountChanged &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(amount);

  @JsonKey(ignore: true)
  @override
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      _$AmountChangedCopyWithImpl<AmountChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
    required TResult Function(String amount) amountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String amount)? amountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmountChanged value)? amountChanged,
    TResult Function(OnBtnReservationTap value)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class AmountChanged implements ProductPageEvent {
  const factory AmountChanged(String amount) = _$AmountChanged;

  String get amount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountChangedCopyWith<AmountChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnReservationTapCopyWith<$Res> {
  factory $OnBtnReservationTapCopyWith(
          OnBtnReservationTap value, $Res Function(OnBtnReservationTap) then) =
      _$OnBtnReservationTapCopyWithImpl<$Res>;
  $Res call({AdProduct product});

  $AdProductCopyWith<$Res> get product;
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

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(OnBtnReservationTap(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }

  @override
  $AdProductCopyWith<$Res> get product {
    return $AdProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$OnBtnReservationTap implements OnBtnReservationTap {
  const _$OnBtnReservationTap(this.product);

  @override
  final AdProduct product;

  @override
  String toString() {
    return 'ProductPageEvent.onBtnReservationTap(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBtnReservationTap &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $OnBtnReservationTapCopyWith<OnBtnReservationTap> get copyWith =>
      _$OnBtnReservationTapCopyWithImpl<OnBtnReservationTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
    required TResult Function(String amount) amountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return onBtnReservationTap(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String amount)? amountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
    required TResult orElse(),
  }) {
    if (onBtnReservationTap != null) {
      return onBtnReservationTap(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(AmountChanged value) amountChanged,
    required TResult Function(OnBtnReservationTap value) onBtnReservationTap,
  }) {
    return onBtnReservationTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(AmountChanged value)? amountChanged,
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
  const factory OnBtnReservationTap(AdProduct product) = _$OnBtnReservationTap;

  AdProduct get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBtnReservationTapCopyWith<OnBtnReservationTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProductPageStateTearOff {
  const _$ProductPageStateTearOff();

  _ProductPageState call(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Either<ReservationFailure, ReservationItem>?
          reservationItemFailureOrSuccess,
      required bool showErrorMsg,
      required Place? place,
      required bool openCart}) {
    return _ProductPageState(
      reservationQuantity: reservationQuantity,
      showErrorsMessage: showErrorsMessage,
      reservationItemFailureOrSuccess: reservationItemFailureOrSuccess,
      showErrorMsg: showErrorMsg,
      place: place,
      openCart: openCart,
    );
  }
}

/// @nodoc
const $ProductPageState = _$ProductPageStateTearOff();

/// @nodoc
mixin _$ProductPageState {
  ReservationQuantity get reservationQuantity =>
      throw _privateConstructorUsedError;
  bool get showErrorsMessage => throw _privateConstructorUsedError;
  Either<ReservationFailure, ReservationItem>?
      get reservationItemFailureOrSuccess => throw _privateConstructorUsedError;
  bool get showErrorMsg => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  bool get openCart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductPageStateCopyWith<ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductPageStateCopyWith<$Res> {
  factory $ProductPageStateCopyWith(
          ProductPageState value, $Res Function(ProductPageState) then) =
      _$ProductPageStateCopyWithImpl<$Res>;
  $Res call(
      {ReservationQuantity reservationQuantity,
      bool showErrorsMessage,
      Either<ReservationFailure, ReservationItem>?
          reservationItemFailureOrSuccess,
      bool showErrorMsg,
      Place? place,
      bool openCart});

  $PlaceCopyWith<$Res>? get place;
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
    Object? reservationQuantity = freezed,
    Object? showErrorsMessage = freezed,
    Object? reservationItemFailureOrSuccess = freezed,
    Object? showErrorMsg = freezed,
    Object? place = freezed,
    Object? openCart = freezed,
  }) {
    return _then(_value.copyWith(
      reservationQuantity: reservationQuantity == freezed
          ? _value.reservationQuantity
          : reservationQuantity // ignore: cast_nullable_to_non_nullable
              as ReservationQuantity,
      showErrorsMessage: showErrorsMessage == freezed
          ? _value.showErrorsMessage
          : showErrorsMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      reservationItemFailureOrSuccess: reservationItemFailureOrSuccess ==
              freezed
          ? _value.reservationItemFailureOrSuccess
          : reservationItemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, ReservationItem>?,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      openCart: openCart == freezed
          ? _value.openCart
          : openCart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc
abstract class _$ProductPageStateCopyWith<$Res>
    implements $ProductPageStateCopyWith<$Res> {
  factory _$ProductPageStateCopyWith(
          _ProductPageState value, $Res Function(_ProductPageState) then) =
      __$ProductPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {ReservationQuantity reservationQuantity,
      bool showErrorsMessage,
      Either<ReservationFailure, ReservationItem>?
          reservationItemFailureOrSuccess,
      bool showErrorMsg,
      Place? place,
      bool openCart});

  @override
  $PlaceCopyWith<$Res>? get place;
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
    Object? reservationQuantity = freezed,
    Object? showErrorsMessage = freezed,
    Object? reservationItemFailureOrSuccess = freezed,
    Object? showErrorMsg = freezed,
    Object? place = freezed,
    Object? openCart = freezed,
  }) {
    return _then(_ProductPageState(
      reservationQuantity: reservationQuantity == freezed
          ? _value.reservationQuantity
          : reservationQuantity // ignore: cast_nullable_to_non_nullable
              as ReservationQuantity,
      showErrorsMessage: showErrorsMessage == freezed
          ? _value.showErrorsMessage
          : showErrorsMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      reservationItemFailureOrSuccess: reservationItemFailureOrSuccess ==
              freezed
          ? _value.reservationItemFailureOrSuccess
          : reservationItemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<ReservationFailure, ReservationItem>?,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      openCart: openCart == freezed
          ? _value.openCart
          : openCart // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProductPageState implements _ProductPageState {
  const _$_ProductPageState(
      {required this.reservationQuantity,
      required this.showErrorsMessage,
      required this.reservationItemFailureOrSuccess,
      required this.showErrorMsg,
      required this.place,
      required this.openCart});

  @override
  final ReservationQuantity reservationQuantity;
  @override
  final bool showErrorsMessage;
  @override
  final Either<ReservationFailure, ReservationItem>?
      reservationItemFailureOrSuccess;
  @override
  final bool showErrorMsg;
  @override
  final Place? place;
  @override
  final bool openCart;

  @override
  String toString() {
    return 'ProductPageState(reservationQuantity: $reservationQuantity, showErrorsMessage: $showErrorsMessage, reservationItemFailureOrSuccess: $reservationItemFailureOrSuccess, showErrorMsg: $showErrorMsg, place: $place, openCart: $openCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductPageState &&
            (identical(other.reservationQuantity, reservationQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.reservationQuantity, reservationQuantity)) &&
            (identical(other.showErrorsMessage, showErrorsMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorsMessage, showErrorsMessage)) &&
            (identical(other.reservationItemFailureOrSuccess,
                    reservationItemFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.reservationItemFailureOrSuccess,
                    reservationItemFailureOrSuccess)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.openCart, openCart) ||
                const DeepCollectionEquality()
                    .equals(other.openCart, openCart)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservationQuantity) ^
      const DeepCollectionEquality().hash(showErrorsMessage) ^
      const DeepCollectionEquality().hash(reservationItemFailureOrSuccess) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(openCart);

  @JsonKey(ignore: true)
  @override
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      __$ProductPageStateCopyWithImpl<_ProductPageState>(this, _$identity);
}

abstract class _ProductPageState implements ProductPageState {
  const factory _ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Either<ReservationFailure, ReservationItem>?
          reservationItemFailureOrSuccess,
      required bool showErrorMsg,
      required Place? place,
      required bool openCart}) = _$_ProductPageState;

  @override
  ReservationQuantity get reservationQuantity =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrorsMessage => throw _privateConstructorUsedError;
  @override
  Either<ReservationFailure, ReservationItem>?
      get reservationItemFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  bool get showErrorMsg => throw _privateConstructorUsedError;
  @override
  Place? get place => throw _privateConstructorUsedError;
  @override
  bool get openCart => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
