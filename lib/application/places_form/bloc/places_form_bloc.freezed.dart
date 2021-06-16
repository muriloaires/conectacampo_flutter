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

  StateSelected stateSelected(String state) {
    return StateSelected(
      state,
    );
  }

  PlaceSelected placeSelected(String place) {
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
    required TResult Function(String state) stateSelected,
    required TResult Function(String place) placeSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String state)? stateSelected,
    TResult Function(String place)? placeSelected,
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
    required TResult Function(String state) stateSelected,
    required TResult Function(String place) placeSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String state)? stateSelected,
    TResult Function(String place)? placeSelected,
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
  $Res call({String state});
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
              as String,
    ));
  }
}

/// @nodoc

class _$StateSelected implements StateSelected {
  const _$StateSelected(this.state);

  @override
  final String state;

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
    required TResult Function(String state) stateSelected,
    required TResult Function(String place) placeSelected,
  }) {
    return stateSelected(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String state)? stateSelected,
    TResult Function(String place)? placeSelected,
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
  const factory StateSelected(String state) = _$StateSelected;

  String get state => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StateSelectedCopyWith<StateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSelectedCopyWith<$Res> {
  factory $PlaceSelectedCopyWith(
          PlaceSelected value, $Res Function(PlaceSelected) then) =
      _$PlaceSelectedCopyWithImpl<$Res>;
  $Res call({String place});
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
              as String,
    ));
  }
}

/// @nodoc

class _$PlaceSelected implements PlaceSelected {
  const _$PlaceSelected(this.place);

  @override
  final String place;

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
    required TResult Function(String state) stateSelected,
    required TResult Function(String place) placeSelected,
  }) {
    return placeSelected(place);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String state)? stateSelected,
    TResult Function(String place)? placeSelected,
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
  const factory PlaceSelected(String place) = _$PlaceSelected;

  String get place => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceSelectedCopyWith<PlaceSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PlacesFormStateTearOff {
  const _$PlacesFormStateTearOff();

  _PlacesFormState call(
      Option<Either<PlacesFailure, List<StatePlace>>> states,
      Option<Either<PlacesFailure, List<Place>>> places,
      String? selectedState,
      String? placeSelected,
      bool isLoadingStatePlaces,
      bool loadStatePlacesFinish,
      bool isLoadingPlaces,
      bool loadPlacesFinish,
      bool isSubmitting,
      Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption) {
    return _PlacesFormState(
      states,
      places,
      selectedState,
      placeSelected,
      isLoadingStatePlaces,
      loadStatePlacesFinish,
      isLoadingPlaces,
      loadPlacesFinish,
      isSubmitting,
      placesFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $PlacesFormState = _$PlacesFormStateTearOff();

/// @nodoc
mixin _$PlacesFormState {
  Option<Either<PlacesFailure, List<StatePlace>>> get states =>
      throw _privateConstructorUsedError;
  Option<Either<PlacesFailure, List<Place>>> get places =>
      throw _privateConstructorUsedError;
  String? get selectedState => throw _privateConstructorUsedError;
  String? get placeSelected => throw _privateConstructorUsedError;
  bool get isLoadingStatePlaces => throw _privateConstructorUsedError;
  bool get loadStatePlacesFinish => throw _privateConstructorUsedError;
  bool get isLoadingPlaces => throw _privateConstructorUsedError;
  bool get loadPlacesFinish => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
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
      {Option<Either<PlacesFailure, List<StatePlace>>> states,
      Option<Either<PlacesFailure, List<Place>>> places,
      String? selectedState,
      String? placeSelected,
      bool isLoadingStatePlaces,
      bool loadStatePlacesFinish,
      bool isLoadingPlaces,
      bool loadPlacesFinish,
      bool isSubmitting,
      Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption});
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
    Object? states = freezed,
    Object? places = freezed,
    Object? selectedState = freezed,
    Object? placeSelected = freezed,
    Object? isLoadingStatePlaces = freezed,
    Object? loadStatePlacesFinish = freezed,
    Object? isLoadingPlaces = freezed,
    Object? loadPlacesFinish = freezed,
    Object? isSubmitting = freezed,
    Object? placesFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
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
              as String?,
      placeSelected: placeSelected == freezed
          ? _value.placeSelected
          : placeSelected // ignore: cast_nullable_to_non_nullable
              as String?,
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
      placesFailureOrSuccessOption: placesFailureOrSuccessOption == freezed
          ? _value.placesFailureOrSuccessOption
          : placesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, Unit>>,
    ));
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
      {Option<Either<PlacesFailure, List<StatePlace>>> states,
      Option<Either<PlacesFailure, List<Place>>> places,
      String? selectedState,
      String? placeSelected,
      bool isLoadingStatePlaces,
      bool loadStatePlacesFinish,
      bool isLoadingPlaces,
      bool loadPlacesFinish,
      bool isSubmitting,
      Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption});
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
    Object? states = freezed,
    Object? places = freezed,
    Object? selectedState = freezed,
    Object? placeSelected = freezed,
    Object? isLoadingStatePlaces = freezed,
    Object? loadStatePlacesFinish = freezed,
    Object? isLoadingPlaces = freezed,
    Object? loadPlacesFinish = freezed,
    Object? isSubmitting = freezed,
    Object? placesFailureOrSuccessOption = freezed,
  }) {
    return _then(_PlacesFormState(
      states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<StatePlace>>>,
      places == freezed
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, List<Place>>>,
      selectedState == freezed
          ? _value.selectedState
          : selectedState // ignore: cast_nullable_to_non_nullable
              as String?,
      placeSelected == freezed
          ? _value.placeSelected
          : placeSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadingStatePlaces == freezed
          ? _value.isLoadingStatePlaces
          : isLoadingStatePlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadStatePlacesFinish == freezed
          ? _value.loadStatePlacesFinish
          : loadStatePlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPlaces == freezed
          ? _value.isLoadingPlaces
          : isLoadingPlaces // ignore: cast_nullable_to_non_nullable
              as bool,
      loadPlacesFinish == freezed
          ? _value.loadPlacesFinish
          : loadPlacesFinish // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      placesFailureOrSuccessOption == freezed
          ? _value.placesFailureOrSuccessOption
          : placesFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<PlacesFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PlacesFormState implements _PlacesFormState {
  const _$_PlacesFormState(
      this.states,
      this.places,
      this.selectedState,
      this.placeSelected,
      this.isLoadingStatePlaces,
      this.loadStatePlacesFinish,
      this.isLoadingPlaces,
      this.loadPlacesFinish,
      this.isSubmitting,
      this.placesFailureOrSuccessOption);

  @override
  final Option<Either<PlacesFailure, List<StatePlace>>> states;
  @override
  final Option<Either<PlacesFailure, List<Place>>> places;
  @override
  final String? selectedState;
  @override
  final String? placeSelected;
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
  final Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption;

  @override
  String toString() {
    return 'PlacesFormState(states: $states, places: $places, selectedState: $selectedState, placeSelected: $placeSelected, isLoadingStatePlaces: $isLoadingStatePlaces, loadStatePlacesFinish: $loadStatePlacesFinish, isLoadingPlaces: $isLoadingPlaces, loadPlacesFinish: $loadPlacesFinish, isSubmitting: $isSubmitting, placesFailureOrSuccessOption: $placesFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlacesFormState &&
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
            (identical(other.placesFailureOrSuccessOption,
                    placesFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.placesFailureOrSuccessOption,
                    placesFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(states) ^
      const DeepCollectionEquality().hash(places) ^
      const DeepCollectionEquality().hash(selectedState) ^
      const DeepCollectionEquality().hash(placeSelected) ^
      const DeepCollectionEquality().hash(isLoadingStatePlaces) ^
      const DeepCollectionEquality().hash(loadStatePlacesFinish) ^
      const DeepCollectionEquality().hash(isLoadingPlaces) ^
      const DeepCollectionEquality().hash(loadPlacesFinish) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(placesFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$PlacesFormStateCopyWith<_PlacesFormState> get copyWith =>
      __$PlacesFormStateCopyWithImpl<_PlacesFormState>(this, _$identity);
}

abstract class _PlacesFormState implements PlacesFormState {
  const factory _PlacesFormState(
          Option<Either<PlacesFailure, List<StatePlace>>> states,
          Option<Either<PlacesFailure, List<Place>>> places,
          String? selectedState,
          String? placeSelected,
          bool isLoadingStatePlaces,
          bool loadStatePlacesFinish,
          bool isLoadingPlaces,
          bool loadPlacesFinish,
          bool isSubmitting,
          Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption) =
      _$_PlacesFormState;

  @override
  Option<Either<PlacesFailure, List<StatePlace>>> get states =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<PlacesFailure, List<Place>>> get places =>
      throw _privateConstructorUsedError;
  @override
  String? get selectedState => throw _privateConstructorUsedError;
  @override
  String? get placeSelected => throw _privateConstructorUsedError;
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
  Option<Either<PlacesFailure, Unit>> get placesFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlacesFormStateCopyWith<_PlacesFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
