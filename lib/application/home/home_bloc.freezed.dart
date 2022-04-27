// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  Started started() {
    return const Started();
  }

  HomeTapped homeTapped() {
    return const HomeTapped();
  }

  SearchTapped searchTapped() {
    return const SearchTapped();
  }

  ReservationsTapped reservationsTapped() {
    return const ReservationsTapped();
  }

  StoresTapped storesTapped() {
    return const StoresTapped();
  }

  MoreTapped moreTapped() {
    return const MoreTapped();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'HomeEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
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
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements HomeEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $HomeTappedCopyWith<$Res> {
  factory $HomeTappedCopyWith(
          HomeTapped value, $Res Function(HomeTapped) then) =
      _$HomeTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeTappedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeTappedCopyWith<$Res> {
  _$HomeTappedCopyWithImpl(HomeTapped _value, $Res Function(HomeTapped) _then)
      : super(_value, (v) => _then(v as HomeTapped));

  @override
  HomeTapped get _value => super._value as HomeTapped;
}

/// @nodoc

class _$HomeTapped implements HomeTapped {
  const _$HomeTapped();

  @override
  String toString() {
    return 'HomeEvent.homeTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return homeTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
    required TResult orElse(),
  }) {
    if (homeTapped != null) {
      return homeTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return homeTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (homeTapped != null) {
      return homeTapped(this);
    }
    return orElse();
  }
}

abstract class HomeTapped implements HomeEvent {
  const factory HomeTapped() = _$HomeTapped;
}

/// @nodoc
abstract class $SearchTappedCopyWith<$Res> {
  factory $SearchTappedCopyWith(
          SearchTapped value, $Res Function(SearchTapped) then) =
      _$SearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchTappedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
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
    return 'HomeEvent.searchTapped()';
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
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return searchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
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
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return searchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped(this);
    }
    return orElse();
  }
}

abstract class SearchTapped implements HomeEvent {
  const factory SearchTapped() = _$SearchTapped;
}

/// @nodoc
abstract class $ReservationsTappedCopyWith<$Res> {
  factory $ReservationsTappedCopyWith(
          ReservationsTapped value, $Res Function(ReservationsTapped) then) =
      _$ReservationsTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationsTappedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $ReservationsTappedCopyWith<$Res> {
  _$ReservationsTappedCopyWithImpl(
      ReservationsTapped _value, $Res Function(ReservationsTapped) _then)
      : super(_value, (v) => _then(v as ReservationsTapped));

  @override
  ReservationsTapped get _value => super._value as ReservationsTapped;
}

/// @nodoc

class _$ReservationsTapped implements ReservationsTapped {
  const _$ReservationsTapped();

  @override
  String toString() {
    return 'HomeEvent.reservationsTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ReservationsTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return reservationsTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
    required TResult orElse(),
  }) {
    if (reservationsTapped != null) {
      return reservationsTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return reservationsTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (reservationsTapped != null) {
      return reservationsTapped(this);
    }
    return orElse();
  }
}

abstract class ReservationsTapped implements HomeEvent {
  const factory ReservationsTapped() = _$ReservationsTapped;
}

/// @nodoc
abstract class $StoresTappedCopyWith<$Res> {
  factory $StoresTappedCopyWith(
          StoresTapped value, $Res Function(StoresTapped) then) =
      _$StoresTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StoresTappedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $StoresTappedCopyWith<$Res> {
  _$StoresTappedCopyWithImpl(
      StoresTapped _value, $Res Function(StoresTapped) _then)
      : super(_value, (v) => _then(v as StoresTapped));

  @override
  StoresTapped get _value => super._value as StoresTapped;
}

/// @nodoc

class _$StoresTapped implements StoresTapped {
  const _$StoresTapped();

  @override
  String toString() {
    return 'HomeEvent.storesTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is StoresTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return storesTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
    required TResult orElse(),
  }) {
    if (storesTapped != null) {
      return storesTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return storesTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (storesTapped != null) {
      return storesTapped(this);
    }
    return orElse();
  }
}

abstract class StoresTapped implements HomeEvent {
  const factory StoresTapped() = _$StoresTapped;
}

/// @nodoc
abstract class $MoreTappedCopyWith<$Res> {
  factory $MoreTappedCopyWith(
          MoreTapped value, $Res Function(MoreTapped) then) =
      _$MoreTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoreTappedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $MoreTappedCopyWith<$Res> {
  _$MoreTappedCopyWithImpl(MoreTapped _value, $Res Function(MoreTapped) _then)
      : super(_value, (v) => _then(v as MoreTapped));

  @override
  MoreTapped get _value => super._value as MoreTapped;
}

/// @nodoc

class _$MoreTapped implements MoreTapped {
  const _$MoreTapped();

  @override
  String toString() {
    return 'HomeEvent.moreTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MoreTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() homeTapped,
    required TResult Function() searchTapped,
    required TResult Function() reservationsTapped,
    required TResult Function() storesTapped,
    required TResult Function() moreTapped,
  }) {
    return moreTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? homeTapped,
    TResult Function()? searchTapped,
    TResult Function()? reservationsTapped,
    TResult Function()? storesTapped,
    TResult Function()? moreTapped,
    required TResult orElse(),
  }) {
    if (moreTapped != null) {
      return moreTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(HomeTapped value) homeTapped,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(ReservationsTapped value) reservationsTapped,
    required TResult Function(StoresTapped value) storesTapped,
    required TResult Function(MoreTapped value) moreTapped,
  }) {
    return moreTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(HomeTapped value)? homeTapped,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(ReservationsTapped value)? reservationsTapped,
    TResult Function(StoresTapped value)? storesTapped,
    TResult Function(MoreTapped value)? moreTapped,
    required TResult orElse(),
  }) {
    if (moreTapped != null) {
      return moreTapped(this);
    }
    return orElse();
  }
}

abstract class MoreTapped implements HomeEvent {
  const factory MoreTapped() = _$MoreTapped;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call({required int currentIndex, required bool isUserLogged}) {
    return _HomeState(
      currentIndex: currentIndex,
      isUserLogged: isUserLogged,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isUserLogged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, bool isUserLogged});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? isUserLogged = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isUserLogged: isUserLogged == freezed
          ? _value.isUserLogged
          : isUserLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, bool isUserLogged});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? isUserLogged = freezed,
  }) {
    return _then(_HomeState(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isUserLogged: isUserLogged == freezed
          ? _value.isUserLogged
          : isUserLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({required this.currentIndex, required this.isUserLogged});

  @override
  final int currentIndex;
  @override
  final bool isUserLogged;

  @override
  String toString() {
    return 'HomeState(currentIndex: $currentIndex, isUserLogged: $isUserLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeState &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.isUserLogged, isUserLogged) ||
                const DeepCollectionEquality()
                    .equals(other.isUserLogged, isUserLogged)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(isUserLogged);

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required int currentIndex, required bool isUserLogged}) = _$_HomeState;

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  bool get isUserLogged => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
