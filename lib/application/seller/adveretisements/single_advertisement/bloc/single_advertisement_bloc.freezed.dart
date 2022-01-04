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

  Started started(Advertisement advertisement, bool isExpanded) {
    return Started(
      advertisement,
      isExpanded,
    );
  }

  OnCancelAdPressed onCancelAdPressed(Advertisement advertisement) {
    return OnCancelAdPressed(
      advertisement,
    );
  }

  OnItemExpandedPressed onItemExpandedPressed() {
    return const OnItemExpandedPressed();
  }
}

/// @nodoc
const $SingleAdvertisementEvent = _$SingleAdvertisementEventTearOff();

/// @nodoc
mixin _$SingleAdvertisementEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement, bool isExpanded)
        started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExpandedPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement, bool isExpanded)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExpandedPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExpandedPressed value)
        onItemExpandedPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExpandedPressed value)? onItemExpandedPressed,
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
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
  $Res call({Advertisement advertisement, bool isExpanded});

  $AdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;

  @override
  $Res call({
    Object? advertisement = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(Started(
      advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement,
      isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$Started implements Started {
  const _$Started(this.advertisement, this.isExpanded);

  @override
  final Advertisement advertisement;
  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'SingleAdvertisementEvent.started(advertisement: $advertisement, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Started &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)) &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(advertisement) ^
      const DeepCollectionEquality().hash(isExpanded);

  @JsonKey(ignore: true)
  @override
  $StartedCopyWith<Started> get copyWith =>
      _$StartedCopyWithImpl<Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement, bool isExpanded)
        started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExpandedPressed,
  }) {
    return started(advertisement, isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement, bool isExpanded)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExpandedPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(advertisement, isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExpandedPressed value)
        onItemExpandedPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExpandedPressed value)? onItemExpandedPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SingleAdvertisementEvent {
  const factory Started(Advertisement advertisement, bool isExpanded) =
      _$Started;

  Advertisement get advertisement => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StartedCopyWith<Started> get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(Advertisement advertisement, bool isExpanded)
        started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExpandedPressed,
  }) {
    return onCancelAdPressed(advertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement, bool isExpanded)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExpandedPressed,
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
    required TResult Function(Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExpandedPressed value)
        onItemExpandedPressed,
  }) {
    return onCancelAdPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExpandedPressed value)? onItemExpandedPressed,
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
abstract class $OnItemExpandedPressedCopyWith<$Res> {
  factory $OnItemExpandedPressedCopyWith(OnItemExpandedPressed value,
          $Res Function(OnItemExpandedPressed) then) =
      _$OnItemExpandedPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnItemExpandedPressedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $OnItemExpandedPressedCopyWith<$Res> {
  _$OnItemExpandedPressedCopyWithImpl(
      OnItemExpandedPressed _value, $Res Function(OnItemExpandedPressed) _then)
      : super(_value, (v) => _then(v as OnItemExpandedPressed));

  @override
  OnItemExpandedPressed get _value => super._value as OnItemExpandedPressed;
}

/// @nodoc

class _$OnItemExpandedPressed implements OnItemExpandedPressed {
  const _$OnItemExpandedPressed();

  @override
  String toString() {
    return 'SingleAdvertisementEvent.onItemExpandedPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnItemExpandedPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement, bool isExpanded)
        started,
    required TResult Function(Advertisement advertisement) onCancelAdPressed,
    required TResult Function() onItemExpandedPressed,
  }) {
    return onItemExpandedPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement, bool isExpanded)? started,
    TResult Function(Advertisement advertisement)? onCancelAdPressed,
    TResult Function()? onItemExpandedPressed,
    required TResult orElse(),
  }) {
    if (onItemExpandedPressed != null) {
      return onItemExpandedPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(OnCancelAdPressed value) onCancelAdPressed,
    required TResult Function(OnItemExpandedPressed value)
        onItemExpandedPressed,
  }) {
    return onItemExpandedPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(OnCancelAdPressed value)? onCancelAdPressed,
    TResult Function(OnItemExpandedPressed value)? onItemExpandedPressed,
    required TResult orElse(),
  }) {
    if (onItemExpandedPressed != null) {
      return onItemExpandedPressed(this);
    }
    return orElse();
  }
}

abstract class OnItemExpandedPressed implements SingleAdvertisementEvent {
  const factory OnItemExpandedPressed() = _$OnItemExpandedPressed;
}

/// @nodoc
class _$SingleAdvertisementStateTearOff {
  const _$SingleAdvertisementStateTearOff();

  _SingleAdvertisementState call(
      {required bool canceling,
      required Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess}) {
    return _SingleAdvertisementState(
      canceling: canceling,
      optionOfDeleteAdFailureOrSuccess: optionOfDeleteAdFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SingleAdvertisementState = _$SingleAdvertisementStateTearOff();

/// @nodoc
mixin _$SingleAdvertisementState {
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
      {bool canceling,
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
    Object? canceling = freezed,
    Object? optionOfDeleteAdFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
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
      {bool canceling,
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
    Object? canceling = freezed,
    Object? optionOfDeleteAdFailureOrSuccess = freezed,
  }) {
    return _then(_SingleAdvertisementState(
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
      {required this.canceling,
      required this.optionOfDeleteAdFailureOrSuccess});

  @override
  final bool canceling;
  @override
  final Option<Either<AdvertisementFailure, Unit>>
      optionOfDeleteAdFailureOrSuccess;

  @override
  String toString() {
    return 'SingleAdvertisementState(canceling: $canceling, optionOfDeleteAdFailureOrSuccess: $optionOfDeleteAdFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleAdvertisementState &&
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
      {required bool canceling,
      required Option<Either<AdvertisementFailure, Unit>>
          optionOfDeleteAdFailureOrSuccess}) = _$_SingleAdvertisementState;

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
