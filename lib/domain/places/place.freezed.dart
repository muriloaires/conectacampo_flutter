// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PlaceTearOff {
  const _$PlaceTearOff();

// ignore: unused_element
  _Place call(
      {@required UniqueId id,
      @required PlaceName name,
      @required StatePlace state,
      @required PlaceAddress address}) {
    return _Place(
      id: id,
      name: name,
      state: state,
      address: address,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Place = _$PlaceTearOff();

/// @nodoc
mixin _$Place {
  UniqueId get id;
  PlaceName get name;
  StatePlace get state;
  PlaceAddress get address;

  @JsonKey(ignore: true)
  $PlaceCopyWith<Place> get copyWith;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id, PlaceName name, StatePlace state, PlaceAddress address});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res> implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  final Place _value;
  // ignore: unused_field
  final $Res Function(Place) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object state = freezed,
    Object address = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as PlaceName,
      state: state == freezed ? _value.state : state as StatePlace,
      address: address == freezed ? _value.address : address as PlaceAddress,
    ));
  }
}

/// @nodoc
abstract class _$PlaceCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$PlaceCopyWith(_Place value, $Res Function(_Place) then) =
      __$PlaceCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id, PlaceName name, StatePlace state, PlaceAddress address});
}

/// @nodoc
class __$PlaceCopyWithImpl<$Res> extends _$PlaceCopyWithImpl<$Res>
    implements _$PlaceCopyWith<$Res> {
  __$PlaceCopyWithImpl(_Place _value, $Res Function(_Place) _then)
      : super(_value, (v) => _then(v as _Place));

  @override
  _Place get _value => super._value as _Place;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object state = freezed,
    Object address = freezed,
  }) {
    return _then(_Place(
      id: id == freezed ? _value.id : id as UniqueId,
      name: name == freezed ? _value.name : name as PlaceName,
      state: state == freezed ? _value.state : state as StatePlace,
      address: address == freezed ? _value.address : address as PlaceAddress,
    ));
  }
}

/// @nodoc
class _$_Place implements _Place {
  const _$_Place(
      {@required this.id,
      @required this.name,
      @required this.state,
      @required this.address})
      : assert(id != null),
        assert(name != null),
        assert(state != null),
        assert(address != null);

  @override
  final UniqueId id;
  @override
  final PlaceName name;
  @override
  final StatePlace state;
  @override
  final PlaceAddress address;

  @override
  String toString() {
    return 'Place(id: $id, name: $name, state: $state, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Place &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  _$PlaceCopyWith<_Place> get copyWith =>
      __$PlaceCopyWithImpl<_Place>(this, _$identity);
}

abstract class _Place implements Place {
  const factory _Place(
      {@required UniqueId id,
      @required PlaceName name,
      @required StatePlace state,
      @required PlaceAddress address}) = _$_Place;

  @override
  UniqueId get id;
  @override
  PlaceName get name;
  @override
  StatePlace get state;
  @override
  PlaceAddress get address;
  @override
  @JsonKey(ignore: true)
  _$PlaceCopyWith<_Place> get copyWith;
}
