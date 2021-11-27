// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReservationEventTearOff {
  const _$ReservationEventTearOff();

  _Started started() {
    return const _Started();
  }

  ShowItemsTapped showItemsTapped() {
    return const ShowItemsTapped();
  }

  SearchTapped searchTapped() {
    return const SearchTapped();
  }
}

/// @nodoc
const $ReservationEvent = _$ReservationEventTearOff();

/// @nodoc
mixin _$ReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() showItemsTapped,
    required TResult Function() searchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showItemsTapped,
    TResult Function()? searchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
    required TResult Function(SearchTapped value) searchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    TResult Function(SearchTapped value)? searchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEventCopyWith<$Res> {
  factory $ReservationEventCopyWith(
          ReservationEvent value, $Res Function(ReservationEvent) then) =
      _$ReservationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationEventCopyWithImpl<$Res>
    implements $ReservationEventCopyWith<$Res> {
  _$ReservationEventCopyWithImpl(this._value, this._then);

  final ReservationEvent _value;
  // ignore: unused_field
  final $Res Function(ReservationEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ReservationEventCopyWithImpl<$Res>
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
    return 'ReservationEvent.started()';
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
    required TResult Function() showItemsTapped,
    required TResult Function() searchTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showItemsTapped,
    TResult Function()? searchTapped,
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
    required TResult Function(ShowItemsTapped value) showItemsTapped,
    required TResult Function(SearchTapped value) searchTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    TResult Function(SearchTapped value)? searchTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ReservationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $ShowItemsTappedCopyWith<$Res> {
  factory $ShowItemsTappedCopyWith(
          ShowItemsTapped value, $Res Function(ShowItemsTapped) then) =
      _$ShowItemsTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowItemsTappedCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
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
    return 'ReservationEvent.showItemsTapped()';
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
    required TResult Function() started,
    required TResult Function() showItemsTapped,
    required TResult Function() searchTapped,
  }) {
    return showItemsTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showItemsTapped,
    TResult Function()? searchTapped,
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
    required TResult Function(ShowItemsTapped value) showItemsTapped,
    required TResult Function(SearchTapped value) searchTapped,
  }) {
    return showItemsTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    TResult Function(SearchTapped value)? searchTapped,
    required TResult orElse(),
  }) {
    if (showItemsTapped != null) {
      return showItemsTapped(this);
    }
    return orElse();
  }
}

abstract class ShowItemsTapped implements ReservationEvent {
  const factory ShowItemsTapped() = _$ShowItemsTapped;
}

/// @nodoc
abstract class $SearchTappedCopyWith<$Res> {
  factory $SearchTappedCopyWith(
          SearchTapped value, $Res Function(SearchTapped) then) =
      _$SearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTappedCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $SearchTappedCopyWith<$Res> {
  _$SearchTappedCopyWithImpl(
      SearchTapped _value, $Res Function(SearchTapped) _then)
      : super(_value, (v) => _then(v as SearchTapped));

  @override
  SearchTapped get _value => super._value as SearchTapped;
}

/// @nodoc

class _$SearchTapped implements SearchTapped {
  const _$SearchTapped();

  @override
  String toString() {
    return 'ReservationEvent.searchTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SearchTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() showItemsTapped,
    required TResult Function() searchTapped,
  }) {
    return searchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? showItemsTapped,
    TResult Function()? searchTapped,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ShowItemsTapped value) showItemsTapped,
    required TResult Function(SearchTapped value) searchTapped,
  }) {
    return searchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ShowItemsTapped value)? showItemsTapped,
    TResult Function(SearchTapped value)? searchTapped,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped(this);
    }
    return orElse();
  }
}

abstract class SearchTapped implements ReservationEvent {
  const factory SearchTapped() = _$SearchTapped;
}

/// @nodoc
class _$ReservationStateTearOff {
  const _$ReservationStateTearOff();

  _ReservationState call(
      {required bool loading,
      required Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationListFailureOrSuccess,
      required bool isItemsVisible,
      required bool openSearch}) {
    return _ReservationState(
      loading: loading,
      optionOfReservationListFailureOrSuccess:
          optionOfReservationListFailureOrSuccess,
      isItemsVisible: isItemsVisible,
      openSearch: openSearch,
    );
  }
}

/// @nodoc
const $ReservationState = _$ReservationStateTearOff();

/// @nodoc
mixin _$ReservationState {
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<ReservationFailure, List<Reservation>>>
      get optionOfReservationListFailureOrSuccess =>
          throw _privateConstructorUsedError;
  bool get isItemsVisible => throw _privateConstructorUsedError;
  bool get openSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationStateCopyWith<ReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res>;
  $Res call(
      {bool loading,
      Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationListFailureOrSuccess,
      bool isItemsVisible,
      bool openSearch});
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  final ReservationState _value;
  // ignore: unused_field
  final $Res Function(ReservationState) _then;

  @override
  $Res call({
    Object? loading = freezed,
    Object? optionOfReservationListFailureOrSuccess = freezed,
    Object? isItemsVisible = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_value.copyWith(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationListFailureOrSuccess:
          optionOfReservationListFailureOrSuccess == freezed
              ? _value.optionOfReservationListFailureOrSuccess
              : optionOfReservationListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, List<Reservation>>>,
      isItemsVisible: isItemsVisible == freezed
          ? _value.isItemsVisible
          : isItemsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ReservationStateCopyWith<$Res>
    implements $ReservationStateCopyWith<$Res> {
  factory _$ReservationStateCopyWith(
          _ReservationState value, $Res Function(_ReservationState) then) =
      __$ReservationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool loading,
      Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationListFailureOrSuccess,
      bool isItemsVisible,
      bool openSearch});
}

/// @nodoc
class __$ReservationStateCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$ReservationStateCopyWith<$Res> {
  __$ReservationStateCopyWithImpl(
      _ReservationState _value, $Res Function(_ReservationState) _then)
      : super(_value, (v) => _then(v as _ReservationState));

  @override
  _ReservationState get _value => super._value as _ReservationState;

  @override
  $Res call({
    Object? loading = freezed,
    Object? optionOfReservationListFailureOrSuccess = freezed,
    Object? isItemsVisible = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_ReservationState(
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfReservationListFailureOrSuccess:
          optionOfReservationListFailureOrSuccess == freezed
              ? _value.optionOfReservationListFailureOrSuccess
              : optionOfReservationListFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<ReservationFailure, List<Reservation>>>,
      isItemsVisible: isItemsVisible == freezed
          ? _value.isItemsVisible
          : isItemsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReservationState implements _ReservationState {
  const _$_ReservationState(
      {required this.loading,
      required this.optionOfReservationListFailureOrSuccess,
      required this.isItemsVisible,
      required this.openSearch});

  @override
  final bool loading;
  @override
  final Option<Either<ReservationFailure, List<Reservation>>>
      optionOfReservationListFailureOrSuccess;
  @override
  final bool isItemsVisible;
  @override
  final bool openSearch;

  @override
  String toString() {
    return 'ReservationState(loading: $loading, optionOfReservationListFailureOrSuccess: $optionOfReservationListFailureOrSuccess, isItemsVisible: $isItemsVisible, openSearch: $openSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationState &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.optionOfReservationListFailureOrSuccess,
                    optionOfReservationListFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfReservationListFailureOrSuccess,
                    optionOfReservationListFailureOrSuccess)) &&
            (identical(other.isItemsVisible, isItemsVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isItemsVisible, isItemsVisible)) &&
            (identical(other.openSearch, openSearch) ||
                const DeepCollectionEquality()
                    .equals(other.openSearch, openSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality()
          .hash(optionOfReservationListFailureOrSuccess) ^
      const DeepCollectionEquality().hash(isItemsVisible) ^
      const DeepCollectionEquality().hash(openSearch);

  @JsonKey(ignore: true)
  @override
  _$ReservationStateCopyWith<_ReservationState> get copyWith =>
      __$ReservationStateCopyWithImpl<_ReservationState>(this, _$identity);
}

abstract class _ReservationState implements ReservationState {
  const factory _ReservationState(
      {required bool loading,
      required Option<Either<ReservationFailure, List<Reservation>>>
          optionOfReservationListFailureOrSuccess,
      required bool isItemsVisible,
      required bool openSearch}) = _$_ReservationState;

  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<Either<ReservationFailure, List<Reservation>>>
      get optionOfReservationListFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  bool get isItemsVisible => throw _privateConstructorUsedError;
  @override
  bool get openSearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationStateCopyWith<_ReservationState> get copyWith =>
      throw _privateConstructorUsedError;
}
