// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_advertisement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleAdvertisementEventTearOff {
  const _$SingleAdvertisementEventTearOff();

  _Started started(Advertisement advertisement) {
    return _Started(
      advertisement,
    );
  }

  OnCancelAdPressed onCancelAdPressed(Advertisement advertisement) {
    return OnCancelAdPressed(
      advertisement,
    );
  }

  OnItemExapandPressed onItemExapandPressed() {
    return const OnItemExapandPressed();
  }
}

/// @nodoc
const $SingleAdvertisementEvent = _$SingleAdvertisementEventTearOff();

/// @nodoc
mixin _$SingleAdvertisementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExapandPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExapandPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExapandPressed value) onItemExapandPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExapandPressed value)? onItemExapandPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAdvertisementEventCopyWith<$Res> {
  factory $SingleAdvertisementEventCopyWith(SingleAdvertisementEvent value,
          $Res Function(SingleAdvertisementEvent) then) =
      _$SingleAdvertisementEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $SingleAdvertisementEventCopyWith<$Res> {
  _$SingleAdvertisementEventCopyWithImpl(this._value, this._then);

  final SingleAdvertisementEvent _value;
  // ignore: unused_field
  final $Res Function(SingleAdvertisementEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Advertisement advertisement});

  $AdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(_Started(
      advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res> get advertisement {
    return $AdvertisementCopyWith<$Res>(_value.advertisement, (value) {
      return _then(_value.copyWith(advertisement: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.advertisement);

  @override
  final Advertisement advertisement;

  @override
  String toString() {
    return 'SingleAdvertisementEvent.started(advertisement: $advertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(advertisement);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExapandPressed,
  }) {
    return started(advertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(advertisement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExapandPressed value) onItemExapandPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExapandPressed value)? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SingleAdvertisementEvent {
  const factory _Started(Advertisement advertisement) = _$_Started;

  Advertisement get advertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnCancelAdPressedCopyWith<$Res> {
  factory $OnCancelAdPressedCopyWith(
          OnCancelAdPressed value, $Res Function(OnCancelAdPressed) then) =
      _$OnCancelAdPressedCopyWithImpl<$Res>;
  $Res call({Advertisement advertisement});

  $AdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class _$OnCancelAdPressedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $OnCancelAdPressedCopyWith<$Res> {
  _$OnCancelAdPressedCopyWithImpl(
      OnCancelAdPressed _value, $Res Function(OnCancelAdPressed) _then)
      : super(_value, (v) => _then(v as OnCancelAdPressed));

  @override
  OnCancelAdPressed get _value => super._value as OnCancelAdPressed;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(OnCancelAdPressed(
      advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res> get advertisement {
    return $AdvertisementCopyWith<$Res>(_value.advertisement, (value) {
      return _then(_value.copyWith(advertisement: value));
    });
  }
}

/// @nodoc

class _$OnCancelAdPressed implements OnCancelAdPressed {
  const _$OnCancelAdPressed(this.advertisement);

  @override
  final Advertisement advertisement;

  @override
  String toString() {
    return 'SingleAdvertisementEvent.onCancelAdPressed(advertisement: $advertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnCancelAdPressed &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(advertisement);

  @JsonKey(ignore: true)
  @override
  $OnCancelAdPressedCopyWith<OnCancelAdPressed> get copyWith =>
      _$OnCancelAdPressedCopyWithImpl<OnCancelAdPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExapandPressed,
  }) {
    return onCancelAdPressed(advertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (onCancelAdPressed != null) {
      return onCancelAdPressed(advertisement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExapandPressed value) onItemExapandPressed,
  }) {
    return onCancelAdPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExapandPressed value)? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (onCancelAdPressed != null) {
      return onCancelAdPressed(this);
    }
    return orElse();
  }
}

abstract class OnCancelAdPressed implements SingleAdvertisementEvent {
  const factory OnCancelAdPressed(Advertisement advertisement) =
      _$OnCancelAdPressed;

  Advertisement get advertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnCancelAdPressedCopyWith<OnCancelAdPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnItemExapandPressedCopyWith<$Res> {
  factory $OnItemExapandPressedCopyWith(OnItemExapandPressed value,
          $Res Function(OnItemExapandPressed) then) =
      _$OnItemExapandPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnItemExapandPressedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $OnItemExapandPressedCopyWith<$Res> {
  _$OnItemExapandPressedCopyWithImpl(
      OnItemExapandPressed _value, $Res Function(OnItemExapandPressed) _then)
      : super(_value, (v) => _then(v as OnItemExapandPressed));

  @override
  OnItemExapandPressed get _value => super._value as OnItemExapandPressed;
}

/// @nodoc

class _$OnItemExapandPressed implements OnItemExapandPressed {
  const _$OnItemExapandPressed();

  @override
  String toString() {
    return 'SingleAdvertisementEvent.onItemExapandPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnItemExapandPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExapandPressed,
  }) {
    return onItemExapandPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (onItemExapandPressed != null) {
      return onItemExapandPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExapandPressed value) onItemExapandPressed,
  }) {
    return onItemExapandPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExapandPressed value)? onItemExapandPressed,
    required TResult orElse(),
  }) {
    if (onItemExapandPressed != null) {
      return onItemExapandPressed(this);
    }
    return orElse();
  }
}

abstract class OnItemExapandPressed implements SingleAdvertisementEvent {
  const factory OnItemExapandPressed() = _$OnItemExapandPressed;
}

/// @nodoc
class _$SingleAdvertisementStateTearOff {
  const _$SingleAdvertisementStateTearOff();

  _SingleAdvertisementState call(
      {required bool isItemVisible,
      required bool canceling,
      required Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess}) {
    return _SingleAdvertisementState(
      isItemVisible: isItemVisible,
      canceling: canceling,
      optionOfDeleteAdFailureOrSuccess: optionOfDeleteAdFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SingleAdvertisementState = _$SingleAdvertisementStateTearOff();

/// @nodoc
mixin _$SingleAdvertisementState {
  bool get isItemVisible => throw _privateConstructorUsedError;
  bool get canceling => throw _privateConstructorUsedError;
  Option<Either<AdvertisementFailure, Unit>>
      get optionOfDeleteAdFailureOrSuccess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleAdvertisementStateCopyWith<SingleAdvertisementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAdvertisementStateCopyWith<$Res> {
  factory $SingleAdvertisementStateCopyWith(SingleAdvertisementState value,
          $Res Function(SingleAdvertisementState) then) =
      _$SingleAdvertisementStateCopyWithImpl<$Res>;
  $Res call(
      {bool isItemVisible,
      bool canceling,
      Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess});
}

/// @nodoc
class _$SingleAdvertisementStateCopyWithImpl<$Res>
    implements $SingleAdvertisementStateCopyWith<$Res> {
  _$SingleAdvertisementStateCopyWithImpl(this._value, this._then);

  final SingleAdvertisementState _value;
  // ignore: unused_field
  final $Res Function(SingleAdvertisementState) _then;

  @override
  $Res call({
    Object? isItemVisible = freezed,
    Object? canceling = freezed,
    Object? optionOfDeleteAdFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isItemVisible: isItemVisible == freezed
          ? _value.isItemVisible
          : isItemVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canceling: canceling == freezed
          ? _value.canceling
          : canceling // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfDeleteAdFailureOrSuccess: optionOfDeleteAdFailureOrSuccess ==
              freezed
          ? _value.optionOfDeleteAdFailureOrSuccess
          : optionOfDeleteAdFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SingleAdvertisementStateCopyWith<$Res>
    implements $SingleAdvertisementStateCopyWith<$Res> {
  factory _$SingleAdvertisementStateCopyWith(_SingleAdvertisementState value,
          $Res Function(_SingleAdvertisementState) then) =
      __$SingleAdvertisementStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isItemVisible,
      bool canceling,
      Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess});
}

/// @nodoc
class __$SingleAdvertisementStateCopyWithImpl<$Res>
    extends _$SingleAdvertisementStateCopyWithImpl<$Res>
    implements _$SingleAdvertisementStateCopyWith<$Res> {
  __$SingleAdvertisementStateCopyWithImpl(_SingleAdvertisementState _value,
      $Res Function(_SingleAdvertisementState) _then)
      : super(_value, (v) => _then(v as _SingleAdvertisementState));

  @override
  _SingleAdvertisementState get _value =>
      super._value as _SingleAdvertisementState;

  @override
  $Res call({
    Object? isItemVisible = freezed,
    Object? canceling = freezed,
    Object? optionOfDeleteAdFailureOrSuccess = freezed,
  }) {
    return _then(_SingleAdvertisementState(
      isItemVisible: isItemVisible == freezed
          ? _value.isItemVisible
          : isItemVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      canceling: canceling == freezed
          ? _value.canceling
          : canceling // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfDeleteAdFailureOrSuccess: optionOfDeleteAdFailureOrSuccess ==
              freezed
          ? _value.optionOfDeleteAdFailureOrSuccess
          : optionOfDeleteAdFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SingleAdvertisementState implements _SingleAdvertisementState {
  const _$_SingleAdvertisementState(
      {required this.isItemVisible,
      required this.canceling,
      required this.optionOfDeleteAdFailureOrSuccess});

  @override
  final bool isItemVisible;
  @override
  final bool canceling;
  @override
  final Option<Either<AdvertisementFailure, Unit>>
      optionOfDeleteAdFailureOrSuccess;

  @override
  String toString() {
    return 'SingleAdvertisementState(isItemVisible: $isItemVisible, canceling: $canceling, optionOfDeleteAdFailureOrSuccess: $optionOfDeleteAdFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleAdvertisementState &&
            (identical(other.isItemVisible, isItemVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isItemVisible, isItemVisible)) &&
            (identical(other.canceling, canceling) ||
                const DeepCollectionEquality()
                    .equals(other.canceling, canceling)) &&
            (identical(other.optionOfDeleteAdFailureOrSuccess,
                    optionOfDeleteAdFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfDeleteAdFailureOrSuccess,
                    optionOfDeleteAdFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isItemVisible) ^
      const DeepCollectionEquality().hash(canceling) ^
      const DeepCollectionEquality().hash(optionOfDeleteAdFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SingleAdvertisementStateCopyWith<_SingleAdvertisementState> get copyWith =>
      __$SingleAdvertisementStateCopyWithImpl<_SingleAdvertisementState>(
          this, _$identity);
}

abstract class _SingleAdvertisementState implements SingleAdvertisementState {
  const factory _SingleAdvertisementState(
      {required bool isItemVisible,
      required bool canceling,
      required Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess}) = _$_SingleAdvertisementState;

  @override
  bool get isItemVisible => throw _privateConstructorUsedError;
  @override
  bool get canceling => throw _privateConstructorUsedError;
  @override
  Option<Either<AdvertisementFailure, Unit>>
      get optionOfDeleteAdFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleAdvertisementStateCopyWith<_SingleAdvertisementState> get copyWith =>
      throw _privateConstructorUsedError;
}
