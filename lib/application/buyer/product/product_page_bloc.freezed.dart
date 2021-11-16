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

  AmmountChanged ammountChanged(String ammount) {
    return AmmountChanged(
      ammount,
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
    required TResult Function(String ammount) ammountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String ammount)? ammountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
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
    required TResult Function(String ammount) ammountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return started(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String ammount)? ammountChanged,
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
  const factory _Started(AdProduct product) = _$_Started;

  AdProduct get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmmountChangedCopyWith<$Res> {
  factory $AmmountChangedCopyWith(
          AmmountChanged value, $Res Function(AmmountChanged) then) =
      _$AmmountChangedCopyWithImpl<$Res>;
  $Res call({String ammount});
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
              as String,
    ));
  }
}

/// @nodoc

class _$AmmountChanged implements AmmountChanged {
  const _$AmmountChanged(this.ammount);

  @override
  final String ammount;

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
    required TResult Function(AdProduct product) started,
    required TResult Function(String ammount) ammountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return ammountChanged(ammount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String ammount)? ammountChanged,
    TResult Function(AdProduct product)? onBtnReservationTap,
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
  const factory AmmountChanged(String ammount) = _$AmmountChanged;

  String get ammount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmmountChangedCopyWith<AmmountChanged> get copyWith =>
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
    required TResult Function(String ammount) ammountChanged,
    required TResult Function(AdProduct product) onBtnReservationTap,
  }) {
    return onBtnReservationTap(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    TResult Function(String ammount)? ammountChanged,
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
      required Option<Either<ReservationFailure, ReservationItem>>
          optionOfReservatiomItemFailureOrSuccess,
      required bool setInitialQuantity,
      required bool back,
      required bool showInserted,
      required bool showErrorMsg,
      required Place? place}) {
    return _ProductPageState(
      reservationQuantity: reservationQuantity,
      showErrorsMessage: showErrorsMessage,
      optionOfReservatiomItemFailureOrSuccess:
          optionOfReservatiomItemFailureOrSuccess,
      setInitialQuantity: setInitialQuantity,
      back: back,
      showInserted: showInserted,
      showErrorMsg: showErrorMsg,
      place: place,
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
  Option<Either<ReservationFailure, ReservationItem>>
      get optionOfReservatiomItemFailureOrSuccess =>
          throw _privateConstructorUsedError;
  bool get setInitialQuantity => throw _privateConstructorUsedError;
  bool get back => throw _privateConstructorUsedError;
  bool get showInserted => throw _privateConstructorUsedError;
  bool get showErrorMsg => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;

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
      Option<Either<ReservationFailure, ReservationItem>>
          optionOfReservatiomItemFailureOrSuccess,
      bool setInitialQuantity,
      bool back,
      bool showInserted,
      bool showErrorMsg,
      Place? place});

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
    Object? optionOfReservatiomItemFailureOrSuccess = freezed,
    Object? setInitialQuantity = freezed,
    Object? back = freezed,
    Object? showInserted = freezed,
    Object? showErrorMsg = freezed,
    Object? place = freezed,
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
      optionOfReservatiomItemFailureOrSuccess:
          optionOfReservatiomItemFailureOrSuccess == freezed
              ? _value.optionOfReservatiomItemFailureOrSuccess
              : optionOfReservatiomItemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, ReservationItem>>,
      setInitialQuantity: setInitialQuantity == freezed
          ? _value.setInitialQuantity
          : setInitialQuantity // ignore: cast_nullable_to_non_nullable
              as bool,
      back: back == freezed
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as bool,
      showInserted: showInserted == freezed
          ? _value.showInserted
          : showInserted // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
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
      Option<Either<ReservationFailure, ReservationItem>>
          optionOfReservatiomItemFailureOrSuccess,
      bool setInitialQuantity,
      bool back,
      bool showInserted,
      bool showErrorMsg,
      Place? place});

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
    Object? optionOfReservatiomItemFailureOrSuccess = freezed,
    Object? setInitialQuantity = freezed,
    Object? back = freezed,
    Object? showInserted = freezed,
    Object? showErrorMsg = freezed,
    Object? place = freezed,
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
      optionOfReservatiomItemFailureOrSuccess:
          optionOfReservatiomItemFailureOrSuccess == freezed
              ? _value.optionOfReservatiomItemFailureOrSuccess
              : optionOfReservatiomItemFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, ReservationItem>>,
      setInitialQuantity: setInitialQuantity == freezed
          ? _value.setInitialQuantity
          : setInitialQuantity // ignore: cast_nullable_to_non_nullable
              as bool,
      back: back == freezed
          ? _value.back
          : back // ignore: cast_nullable_to_non_nullable
              as bool,
      showInserted: showInserted == freezed
          ? _value.showInserted
          : showInserted // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMsg: showErrorMsg == freezed
          ? _value.showErrorMsg
          : showErrorMsg // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class _$_ProductPageState implements _ProductPageState {
  const _$_ProductPageState(
      {required this.reservationQuantity,
      required this.showErrorsMessage,
      required this.optionOfReservatiomItemFailureOrSuccess,
      required this.setInitialQuantity,
      required this.back,
      required this.showInserted,
      required this.showErrorMsg,
      required this.place});

  @override
  final ReservationQuantity reservationQuantity;
  @override
  final bool showErrorsMessage;
  @override
  final Option<Either<ReservationFailure, ReservationItem>>
      optionOfReservatiomItemFailureOrSuccess;
  @override
  final bool setInitialQuantity;
  @override
  final bool back;
  @override
  final bool showInserted;
  @override
  final bool showErrorMsg;
  @override
  final Place? place;

  @override
  String toString() {
    return 'ProductPageState(reservationQuantity: $reservationQuantity, showErrorsMessage: $showErrorsMessage, optionOfReservatiomItemFailureOrSuccess: $optionOfReservatiomItemFailureOrSuccess, setInitialQuantity: $setInitialQuantity, back: $back, showInserted: $showInserted, showErrorMsg: $showErrorMsg, place: $place)';
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
            (identical(other.optionOfReservatiomItemFailureOrSuccess,
                    optionOfReservatiomItemFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfReservatiomItemFailureOrSuccess,
                    optionOfReservatiomItemFailureOrSuccess)) &&
            (identical(other.setInitialQuantity, setInitialQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.setInitialQuantity, setInitialQuantity)) &&
            (identical(other.back, back) ||
                const DeepCollectionEquality().equals(other.back, back)) &&
            (identical(other.showInserted, showInserted) ||
                const DeepCollectionEquality()
                    .equals(other.showInserted, showInserted)) &&
            (identical(other.showErrorMsg, showErrorMsg) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMsg, showErrorMsg)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reservationQuantity) ^
      const DeepCollectionEquality().hash(showErrorsMessage) ^
      const DeepCollectionEquality()
          .hash(optionOfReservatiomItemFailureOrSuccess) ^
      const DeepCollectionEquality().hash(setInitialQuantity) ^
      const DeepCollectionEquality().hash(back) ^
      const DeepCollectionEquality().hash(showInserted) ^
      const DeepCollectionEquality().hash(showErrorMsg) ^
      const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      __$ProductPageStateCopyWithImpl<_ProductPageState>(this, _$identity);
}

abstract class _ProductPageState implements ProductPageState {
  const factory _ProductPageState(
      {required ReservationQuantity reservationQuantity,
      required bool showErrorsMessage,
      required Option<Either<ReservationFailure, ReservationItem>>
          optionOfReservatiomItemFailureOrSuccess,
      required bool setInitialQuantity,
      required bool back,
      required bool showInserted,
      required bool showErrorMsg,
      required Place? place}) = _$_ProductPageState;

  @override
  ReservationQuantity get reservationQuantity =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrorsMessage => throw _privateConstructorUsedError;
  @override
  Option<Either<ReservationFailure, ReservationItem>>
      get optionOfReservatiomItemFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  bool get setInitialQuantity => throw _privateConstructorUsedError;
  @override
  bool get back => throw _privateConstructorUsedError;
  @override
  bool get showInserted => throw _privateConstructorUsedError;
  @override
  bool get showErrorMsg => throw _privateConstructorUsedError;
  @override
  Place? get place => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductPageStateCopyWith<_ProductPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
