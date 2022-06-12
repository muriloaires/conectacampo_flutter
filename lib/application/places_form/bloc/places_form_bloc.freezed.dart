// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'places_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PlacesFormEventTearOff {
  const _$PlacesFormEventTearOff();

  Started started() {
    return const Started();
  }

  StateSelected stateSelected(StatePlace? state) {
    return StateSelected(
      state,
    );
  }

  PlaceSelected placeSelected(Place? place) {
    return PlaceSelected(
      place,
    );
  }
}

/// @nodoc
const $PlacesFormEvent = _$PlacesFormEventTearOff();

/// @nodoc
mixin _$PlacesFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StatePlace? state) stateSelected,
    required TResult Function(Place? place) placeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StatePlace? state)? stateSelected,
    TResult Function(Place? place)? placeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StateSelected value) stateSelected,
    required TResult Function(PlaceSelected value) placeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StateSelected value)? stateSelected,
    TResult Function(PlaceSelected value)? placeSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesFormEventCopyWith<$Res> {
  factory $PlacesFormEventCopyWith(
          PlacesFormEvent value, $Res Function(PlacesFormEvent) then) =
      _$PlacesFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlacesFormEventCopyWithImpl<$Res>
    implements $PlacesFormEventCopyWith<$Res> {
  _$PlacesFormEventCopyWithImpl(this._value, this._then);

  final PlacesFormEvent _value;
  // ignore: unused_field
  final $Res Function(PlacesFormEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$PlacesFormEventCopyWithImpl<$Res>
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
    return 'PlacesFormEvent.started()';
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
    required TResult Function(StatePlace? state) stateSelected,
    required TResult Function(Place? place) placeSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StatePlace? state)? stateSelected,
    TResult Function(Place? place)? placeSelected,
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
    required TResult Function(StateSelected value) stateSelected,
    required TResult Function(PlaceSelected value) placeSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StateSelected value)? stateSelected,
    TResult Function(PlaceSelected value)? placeSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements PlacesFormEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $StateSelectedCopyWith<$Res> {
  factory $StateSelectedCopyWith(
          StateSelected value, $Res Function(StateSelected) then) =
      _$StateSelectedCopyWithImpl<$Res>;
  $Res call({StatePlace? state});
}

/// @nodoc
class _$StateSelectedCopyWithImpl<$Res>
    extends _$PlacesFormEventCopyWithImpl<$Res>
    implements $StateSelectedCopyWith<$Res> {
  _$StateSelectedCopyWithImpl(
      StateSelected _value, $Res Function(StateSelected) _then)
      : super(_value, (v) => _then(v as StateSelected));

  @override
  StateSelected get _value => super._value as StateSelected;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(StateSelected(
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatePlace?,
    ));
  }
}

/// @nodoc

class _$StateSelected implements StateSelected {
  const _$StateSelected(this.state);

  @override
  final StatePlace? state;

  @override
  String toString() {
    return 'PlacesFormEvent.stateSelected(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is StateSelected &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(state);

  @JsonKey(ignore: true)
  @override
  $StateSelectedCopyWith<StateSelected> get copyWith =>
      _$StateSelectedCopyWithImpl<StateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StatePlace? state) stateSelected,
    required TResult Function(Place? place) placeSelected,
  }) {
    return stateSelected(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StatePlace? state)? stateSelected,
    TResult Function(Place? place)? placeSelected,
    required TResult orElse(),
  }) {
    if (stateSelected != null) {
      return stateSelected(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StateSelected value) stateSelected,
    required TResult Function(PlaceSelected value) placeSelected,
  }) {
    return stateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StateSelected value)? stateSelected,
    TResult Function(PlaceSelected value)? placeSelected,
    required TResult orElse(),
  }) {
    if (stateSelected != null) {
      return stateSelected(this);
    }
    return orElse();
  }
}

abstract class StateSelected implements PlacesFormEvent {
  const factory StateSelected(StatePlace? state) = _$StateSelected;

  StatePlace? get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateSelectedCopyWith<StateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSelectedCopyWith<$Res> {
  factory $PlaceSelectedCopyWith(
          PlaceSelected value, $Res Function(PlaceSelected) then) =
      _$PlaceSelectedCopyWithImpl<$Res>;
  $Res call({Place? place});

  $PlaceCopyWith<$Res>? get place;
}

/// @nodoc
class _$PlaceSelectedCopyWithImpl<$Res>
    extends _$PlacesFormEventCopyWithImpl<$Res>
    implements $PlaceSelectedCopyWith<$Res> {
  _$PlaceSelectedCopyWithImpl(
      PlaceSelected _value, $Res Function(PlaceSelected) _then)
      : super(_value, (v) => _then(v as PlaceSelected));

  @override
  PlaceSelected get _value => super._value as PlaceSelected;

  @override
  $Res call({
    Object? place = freezed,
  }) {
    return _then(PlaceSelected(
      place == freezed
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

class _$PlaceSelected implements PlaceSelected {
  const _$PlaceSelected(this.place);

  @override
  final Place? place;

  @override
  String toString() {
    return 'PlacesFormEvent.placeSelected(place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PlaceSelected &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(place);

  @JsonKey(ignore: true)
  @override
  $PlaceSelectedCopyWith<PlaceSelected> get copyWith =>
      _$PlaceSelectedCopyWithImpl<PlaceSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(StatePlace? state) stateSelected,
    required TResult Function(Place? place) placeSelected,
  }) {
    return placeSelected(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(StatePlace? state)? stateSelected,
    TResult Function(Place? place)? placeSelected,
    required TResult orElse(),
  }) {
    if (placeSelected != null) {
      return placeSelected(place);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(StateSelected value) stateSelected,
    required TResult Function(PlaceSelected value) placeSelected,
  }) {
    return placeSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(StateSelected value)? stateSelected,
    TResult Function(PlaceSelected value)? placeSelected,
    required TResult orElse(),
  }) {
    if (placeSelected != null) {
      return placeSelected(this);
    }
    return orElse();
  }
}

abstract class PlaceSelected implements PlacesFormEvent {
  const factory PlaceSelected(Place? place) = _$PlaceSelected;

  Place? get place => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceSelectedCopyWith<PlaceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlacesFormStateTearOff {
  const _$PlacesFormStateTearOff();

  _PlacesFormState call(
      {required User? loggedUser,
      required Option<Either<PlacesFailure, List<StatePlace>>> states,
      required Option<Either<PlacesFailure, List<Place>>> places,
      required StatePlace? selectedState,
      required Place? placeSelected,
      required bool isLoadingStatePlaces,
      required bool loadStatePlacesFinish,
      required bool isLoadingPlaces,
      required bool loadPlacesFinish,
      required bool isSubmitting,
      required bool placeSaved,
      required Option<Either<PlacesFailure, Unit>>
          placesFailureOrSuccessOption}) {
    return _PlacesFormState(
      loggedUser: loggedUser,
      states: states,
      places: places,
      selectedState: selectedState,
      placeSelected: placeSelected,
      isLoadingStatePlaces: isLoadingStatePlaces,
      loadStatePlacesFinish: loadStatePlacesFinish,
      isLoadingPlaces: isLoadingPlaces,
      loadPlacesFinish: loadPlacesFinish,
      isSubmitting: isSubmitting,
      placeSaved: placeSaved,
      placesFailureOrSuccessOption: placesFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PlacesFormState = _$PlacesFormStateTearOff();

/// @nodoc
mixin _$PlacesFormState {
  User? get loggedUser => throw _privateConstructorUsedError;
  Option<Either<PlacesFailure, List<StatePlace>>> get states =>
      throw _privateConstructorUsedError;
  Option<Either<PlacesFailure, List<Place>>> get places =>
      throw _privateConstructorUsedError;
  StatePlace? get selectedState => throw _privateConstructorUsedError;
  Place? get placeSelected => throw _privateConstructorUsedError;
  bool get isLoadingStatePlaces => throw _privateConstructorUsedError;
  bool get loadStatePlacesFinish => throw _privateConstructorUsedError;
  bool get isLoadingPlaces => throw _privateConstructorUsedError;
  bool get loadPlacesFinish => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get placeSaved => throw _privateConstructorUsedError;
  Option<Either<PlacesFailure, Unit>> get placesFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlacesFormStateCopyWith<PlacesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacesFormStateCopyWith<$Res> {
  factory $PlacesFormStateCopyWith(
          PlacesFormState value, $Res Function(PlacesFormState) then) =
      _$PlacesFormStateCopyWithImpl<$Res>;
  $Res call(
      {User? loggedUser,
      Option<Either<PlacesFailure, List<StatePlace>>> states,
      Option<Either<PlacesFailure, List<Place>>> places,
      StatePlace? selectedState,
      Place? placeSelected,
      bool isLoadingStatePlaces,
      bool loadStatePlacesFinish,
      bool isLoadingPlaces,
      bool loadPlacesFinish,
      bool isSubmitting,
      bool placeSaved,
      Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption});

  $UserCopyWith<$Res>? get loggedUser;
  $PlaceCopyWith<$Res>? get placeSelected;
}

/// @nodoc
class _$PlacesFormStateCopyWithImpl<$Res>
    implements $PlacesFormStateCopyWith<$Res> {
  _$PlacesFormStateCopyWithImpl(this._value, this._then);

  final PlacesFormState _value;
  // ignore: unused_field
  final $Res Function(PlacesFormState) _then;

  @override
  $Res call({
    Object? loggedUser = freezed,
    Object? states = freezed,
    Object? places = freezed,
    Object? selectedState = freezed,
    Object? placeSelected = freezed,
    Object? isLoadingStatePlaces = freezed,
    Object? loadStatePlacesFinish = freezed,
    Object? isLoadingPlaces = freezed,
    Object? loadPlacesFinish = freezed,
    Object? isSubmitting = freezed,
    Object? placeSaved = freezed,
    Object? placesFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<StatePlace>>>,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<Place>>>,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as StatePlace?,
      placeSelected: placeSelected == freezed
          ? _value.placeSelected
          : placeSelected // ignore: cast_nullable_to_non_nullable
              as Place?,
      isLoadingStatePlaces: isLoadingStatePlaces == freezed
          ? _value.isLoadingStatePlaces
          : isLoadingStatePlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatePlacesFinish: loadStatePlacesFinish == freezed
          ? _value.loadStatePlacesFinish
          : loadStatePlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPlaces: isLoadingPlaces == freezed
          ? _value.isLoadingPlaces
          : isLoadingPlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadPlacesFinish: loadPlacesFinish == freezed
          ? _value.loadPlacesFinish
          : loadPlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      placeSaved: placeSaved == freezed
          ? _value.placeSaved
          : placeSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      placesFailureOrSuccessOption: placesFailureOrSuccessOption == freezed
          ? _value.placesFailureOrSuccessOption
          : placesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, Unit>>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get loggedUser {
    if (_value.loggedUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.loggedUser!, (value) {
      return _then(_value.copyWith(loggedUser: value));
    });
  }

  @override
  $PlaceCopyWith<$Res>? get placeSelected {
    if (_value.placeSelected == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.placeSelected!, (value) {
      return _then(_value.copyWith(placeSelected: value));
    });
  }
}

/// @nodoc
abstract class _$PlacesFormStateCopyWith<$Res>
    implements $PlacesFormStateCopyWith<$Res> {
  factory _$PlacesFormStateCopyWith(
          _PlacesFormState value, $Res Function(_PlacesFormState) then) =
      __$PlacesFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {User? loggedUser,
      Option<Either<PlacesFailure, List<StatePlace>>> states,
      Option<Either<PlacesFailure, List<Place>>> places,
      StatePlace? selectedState,
      Place? placeSelected,
      bool isLoadingStatePlaces,
      bool loadStatePlacesFinish,
      bool isLoadingPlaces,
      bool loadPlacesFinish,
      bool isSubmitting,
      bool placeSaved,
      Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption});

  @override
  $UserCopyWith<$Res>? get loggedUser;
  @override
  $PlaceCopyWith<$Res>? get placeSelected;
}

/// @nodoc
class __$PlacesFormStateCopyWithImpl<$Res>
    extends _$PlacesFormStateCopyWithImpl<$Res>
    implements _$PlacesFormStateCopyWith<$Res> {
  __$PlacesFormStateCopyWithImpl(
      _PlacesFormState _value, $Res Function(_PlacesFormState) _then)
      : super(_value, (v) => _then(v as _PlacesFormState));

  @override
  _PlacesFormState get _value => super._value as _PlacesFormState;

  @override
  $Res call({
    Object? loggedUser = freezed,
    Object? states = freezed,
    Object? places = freezed,
    Object? selectedState = freezed,
    Object? placeSelected = freezed,
    Object? isLoadingStatePlaces = freezed,
    Object? loadStatePlacesFinish = freezed,
    Object? isLoadingPlaces = freezed,
    Object? loadPlacesFinish = freezed,
    Object? isSubmitting = freezed,
    Object? placeSaved = freezed,
    Object? placesFailureOrSuccessOption = freezed,
  }) {
    return _then(_PlacesFormState(
      loggedUser: loggedUser == freezed
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<StatePlace>>>,
      places: places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<Place>>>,
      selectedState: selectedState == freezed
          ? _value.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as StatePlace?,
      placeSelected: placeSelected == freezed
          ? _value.placeSelected
          : placeSelected // ignore: cast_nullable_to_non_nullable
              as Place?,
      isLoadingStatePlaces: isLoadingStatePlaces == freezed
          ? _value.isLoadingStatePlaces
          : isLoadingStatePlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatePlacesFinish: loadStatePlacesFinish == freezed
          ? _value.loadStatePlacesFinish
          : loadStatePlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPlaces: isLoadingPlaces == freezed
          ? _value.isLoadingPlaces
          : isLoadingPlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadPlacesFinish: loadPlacesFinish == freezed
          ? _value.loadPlacesFinish
          : loadPlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      placeSaved: placeSaved == freezed
          ? _value.placeSaved
          : placeSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      placesFailureOrSuccessOption: placesFailureOrSuccessOption == freezed
          ? _value.placesFailureOrSuccessOption
          : placesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PlacesFormState implements _PlacesFormState {
  const _$_PlacesFormState(
      {required this.loggedUser,
      required this.states,
      required this.places,
      required this.selectedState,
      required this.placeSelected,
      required this.isLoadingStatePlaces,
      required this.loadStatePlacesFinish,
      required this.isLoadingPlaces,
      required this.loadPlacesFinish,
      required this.isSubmitting,
      required this.placeSaved,
      required this.placesFailureOrSuccessOption});

  @override
  final User? loggedUser;
  @override
  final Option<Either<PlacesFailure, List<StatePlace>>> states;
  @override
  final Option<Either<PlacesFailure, List<Place>>> places;
  @override
  final StatePlace? selectedState;
  @override
  final Place? placeSelected;
  @override
  final bool isLoadingStatePlaces;
  @override
  final bool loadStatePlacesFinish;
  @override
  final bool isLoadingPlaces;
  @override
  final bool loadPlacesFinish;
  @override
  final bool isSubmitting;
  @override
  final bool placeSaved;
  @override
  final Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption;

  @override
  String toString() {
    return 'PlacesFormState(loggedUser: $loggedUser, states: $states, places: $places, selectedState: $selectedState, placeSelected: $placeSelected, isLoadingStatePlaces: $isLoadingStatePlaces, loadStatePlacesFinish: $loadStatePlacesFinish, isLoadingPlaces: $isLoadingPlaces, loadPlacesFinish: $loadPlacesFinish, isSubmitting: $isSubmitting, placeSaved: $placeSaved, placesFailureOrSuccessOption: $placesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesFormState &&
            (identical(other.loggedUser, loggedUser) ||
                const DeepCollectionEquality()
                    .equals(other.loggedUser, loggedUser)) &&
            (identical(other.states, states) ||
                const DeepCollectionEquality().equals(other.states, states)) &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)) &&
            (identical(other.selectedState, selectedState) ||
                const DeepCollectionEquality()
                    .equals(other.selectedState, selectedState)) &&
            (identical(other.placeSelected, placeSelected) ||
                const DeepCollectionEquality()
                    .equals(other.placeSelected, placeSelected)) &&
            (identical(other.isLoadingStatePlaces, isLoadingStatePlaces) ||
                const DeepCollectionEquality().equals(
                    other.isLoadingStatePlaces, isLoadingStatePlaces)) &&
            (identical(other.loadStatePlacesFinish, loadStatePlacesFinish) ||
                const DeepCollectionEquality().equals(
                    other.loadStatePlacesFinish, loadStatePlacesFinish)) &&
            (identical(other.isLoadingPlaces, isLoadingPlaces) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadingPlaces, isLoadingPlaces)) &&
            (identical(other.loadPlacesFinish, loadPlacesFinish) ||
                const DeepCollectionEquality()
                    .equals(other.loadPlacesFinish, loadPlacesFinish)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.placeSaved, placeSaved) ||
                const DeepCollectionEquality()
                    .equals(other.placeSaved, placeSaved)) &&
            (identical(other.placesFailureOrSuccessOption,
                    placesFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.placesFailureOrSuccessOption,
                    placesFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(loggedUser) ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(places) ^
      const DeepCollectionEquality().hash(selectedState) ^
      const DeepCollectionEquality().hash(placeSelected) ^
      const DeepCollectionEquality().hash(isLoadingStatePlaces) ^
      const DeepCollectionEquality().hash(loadStatePlacesFinish) ^
      const DeepCollectionEquality().hash(isLoadingPlaces) ^
      const DeepCollectionEquality().hash(loadPlacesFinish) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(placeSaved) ^
      const DeepCollectionEquality().hash(placesFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PlacesFormStateCopyWith<_PlacesFormState> get copyWith =>
      __$PlacesFormStateCopyWithImpl<_PlacesFormState>(this, _$identity);
}

abstract class _PlacesFormState implements PlacesFormState {
  const factory _PlacesFormState(
      {required User? loggedUser,
      required Option<Either<PlacesFailure, List<StatePlace>>> states,
      required Option<Either<PlacesFailure, List<Place>>> places,
      required StatePlace? selectedState,
      required Place? placeSelected,
      required bool isLoadingStatePlaces,
      required bool loadStatePlacesFinish,
      required bool isLoadingPlaces,
      required bool loadPlacesFinish,
      required bool isSubmitting,
      required bool placeSaved,
      required Option<Either<PlacesFailure, Unit>>
          placesFailureOrSuccessOption}) = _$_PlacesFormState;

  @override
  User? get loggedUser => throw _privateConstructorUsedError;
  @override
  Option<Either<PlacesFailure, List<StatePlace>>> get states =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<PlacesFailure, List<Place>>> get places =>
      throw _privateConstructorUsedError;
  @override
  StatePlace? get selectedState => throw _privateConstructorUsedError;
  @override
  Place? get placeSelected => throw _privateConstructorUsedError;
  @override
  bool get isLoadingStatePlaces => throw _privateConstructorUsedError;
  @override
  bool get loadStatePlacesFinish => throw _privateConstructorUsedError;
  @override
  bool get isLoadingPlaces => throw _privateConstructorUsedError;
  @override
  bool get loadPlacesFinish => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get placeSaved => throw _privateConstructorUsedError;
  @override
  Option<Either<PlacesFailure, Unit>> get placesFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlacesFormStateCopyWith<_PlacesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
