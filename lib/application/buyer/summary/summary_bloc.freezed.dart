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

  OnPlaceChanged onPlaceChanged() {
    return const OnPlaceChanged();
  }

  OnBuyTapped onBuyTapped() {
    return const OnBuyTapped();
  }
}

/// @nodoc
const $SummaryEvent = _$SummaryEventTearOff();

/// @nodoc
mixin _$SummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onPlaceChanged,
    required TResult Function() onBuyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onPlaceChanged,
    TResult Function()? onBuyTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
    required TResult Function(OnBuyTapped value) onBuyTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    TResult Function(OnBuyTapped value)? onBuyTapped,
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
    required TResult Function() onPlaceChanged,
    required TResult Function() onBuyTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onPlaceChanged,
    TResult Function()? onBuyTapped,
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
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
    required TResult Function(OnBuyTapped value) onBuyTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    TResult Function(OnBuyTapped value)? onBuyTapped,
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
    required TResult Function() onPlaceChanged,
    required TResult Function() onBuyTapped,
  }) {
    return onPlaceChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onPlaceChanged,
    TResult Function()? onBuyTapped,
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
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
    required TResult Function(OnBuyTapped value) onBuyTapped,
  }) {
    return onPlaceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    TResult Function(OnBuyTapped value)? onBuyTapped,
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
abstract class $OnBuyTappedCopyWith<$Res> {
  factory $OnBuyTappedCopyWith(
          OnBuyTapped value, $Res Function(OnBuyTapped) then) =
      _$OnBuyTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBuyTappedCopyWithImpl<$Res> extends _$SummaryEventCopyWithImpl<$Res>
    implements $OnBuyTappedCopyWith<$Res> {
  _$OnBuyTappedCopyWithImpl(
      OnBuyTapped _value, $Res Function(OnBuyTapped) _then)
      : super(_value, (v) => _then(v as OnBuyTapped));

  @override
  OnBuyTapped get _value => super._value as OnBuyTapped;
}

/// @nodoc

class _$OnBuyTapped implements OnBuyTapped {
  const _$OnBuyTapped();

  @override
  String toString() {
    return 'SummaryEvent.onBuyTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBuyTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onPlaceChanged,
    required TResult Function() onBuyTapped,
  }) {
    return onBuyTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onPlaceChanged,
    TResult Function()? onBuyTapped,
    required TResult orElse(),
  }) {
    if (onBuyTapped != null) {
      return onBuyTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnPlaceChanged value) onPlaceChanged,
    required TResult Function(OnBuyTapped value) onBuyTapped,
  }) {
    return onBuyTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnPlaceChanged value)? onPlaceChanged,
    TResult Function(OnBuyTapped value)? onBuyTapped,
    required TResult orElse(),
  }) {
    if (onBuyTapped != null) {
      return onBuyTapped(this);
    }
    return orElse();
  }
}

abstract class OnBuyTapped implements SummaryEvent {
  const factory OnBuyTapped() = _$OnBuyTapped;
}

/// @nodoc
class _$SummaryStateTearOff {
  const _$SummaryStateTearOff();

  _SummaryState call(
      {required Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      required Place selectedPlace,
      required bool openSearch}) {
    return _SummaryState(
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess,
      selectedPlace: selectedPlace,
      openSearch: openSearch,
    );
  }
}

/// @nodoc
const $SummaryState = _$SummaryStateTearOff();

/// @nodoc
mixin _$SummaryState {
  Option<Either<ReservationFailure, Unit>>
      get optionOfReservationCancelFailureOrSuccess =>
          throw _privateConstructorUsedError;
  Place get selectedPlace => throw _privateConstructorUsedError;
  bool get openSearch => throw _privateConstructorUsedError;

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
      {Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      Place selectedPlace,
      bool openSearch});

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
    Object? optionOfReservationCancelFailureOrSuccess = freezed,
    Object? selectedPlace = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_value.copyWith(
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess == freezed
              ? _value.optionOfReservationCancelFailureOrSuccess
              : optionOfReservationCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, Unit>>,
      selectedPlace: selectedPlace == freezed
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Place,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      Place selectedPlace,
      bool openSearch});

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
    Object? optionOfReservationCancelFailureOrSuccess = freezed,
    Object? selectedPlace = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_SummaryState(
      optionOfReservationCancelFailureOrSuccess:
          optionOfReservationCancelFailureOrSuccess == freezed
              ? _value.optionOfReservationCancelFailureOrSuccess
              : optionOfReservationCancelFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, Unit>>,
      selectedPlace: selectedPlace == freezed
          ? _value.selectedPlace
          : selectedPlace // ignore: cast_nullable_to_non_nullable
              as Place,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SummaryState implements _SummaryState {
  const _$_SummaryState(
      {required this.optionOfReservationCancelFailureOrSuccess,
      required this.selectedPlace,
      required this.openSearch});

  @override
  final Option<Either<ReservationFailure, Unit>>
      optionOfReservationCancelFailureOrSuccess;
  @override
  final Place selectedPlace;
  @override
  final bool openSearch;

  @override
  String toString() {
    return 'SummaryState(optionOfReservationCancelFailureOrSuccess: $optionOfReservationCancelFailureOrSuccess, selectedPlace: $selectedPlace, openSearch: $openSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SummaryState &&
            (identical(other.optionOfReservationCancelFailureOrSuccess,
                    optionOfReservationCancelFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfReservationCancelFailureOrSuccess,
                    optionOfReservationCancelFailureOrSuccess)) &&
            (identical(other.selectedPlace, selectedPlace) ||
                const DeepCollectionEquality()
                    .equals(other.selectedPlace, selectedPlace)) &&
            (identical(other.openSearch, openSearch) ||
                const DeepCollectionEquality()
                    .equals(other.openSearch, openSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality()
          .hash(optionOfReservationCancelFailureOrSuccess) ^
      const DeepCollectionEquality().hash(selectedPlace) ^
      const DeepCollectionEquality().hash(openSearch);

  @JsonKey(ignore: true)
  @override
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      __$SummaryStateCopyWithImpl<_SummaryState>(this, _$identity);
}

abstract class _SummaryState implements SummaryState {
  const factory _SummaryState(
      {required Option<Either<ReservationFailure, Unit>>
          optionOfReservationCancelFailureOrSuccess,
      required Place selectedPlace,
      required bool openSearch}) = _$_SummaryState;

  @override
  Option<Either<ReservationFailure, Unit>>
      get optionOfReservationCancelFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  Place get selectedPlace => throw _privateConstructorUsedError;
  @override
  bool get openSearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SummaryStateCopyWith<_SummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
