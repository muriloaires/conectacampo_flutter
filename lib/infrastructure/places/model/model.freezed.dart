// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) {
  return _PlaceResponse.fromJson(json);
}

/// @nodoc
class _$PlaceResponseTearOff {
  const _$PlaceResponseTearOff();

// ignore: unused_element
  _PlaceResponse call(
      {@required @JsonKey(name: 'id') int id,
      @required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'state') String state,
      @required @JsonKey(name: 'city') String city,
      @required @JsonKey(name: 'address') String address,
      @required @JsonKey(name: 'created_at') DateTime createdAt}) {
    return _PlaceResponse(
      id: id,
      name: name,
      state: state,
      city: city,
      address: address,
      createdAt: createdAt,
    );
  }

// ignore: unused_element
  PlaceResponse fromJson(Map<String, Object> json) {
    return PlaceResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlaceResponse = _$PlaceResponseTearOff();

/// @nodoc
mixin _$PlaceResponse {
  @JsonKey(name: 'id')
  int get id;
  @JsonKey(name: 'name')
  String get name;
  @JsonKey(name: 'state')
  String get state;
  @JsonKey(name: 'city')
  String get city;
  @JsonKey(name: 'address')
  String get address;
  @JsonKey(name: 'created_at')
  DateTime get createdAt;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PlaceResponseCopyWith<PlaceResponse> get copyWith;
}

/// @nodoc
abstract class $PlaceResponseCopyWith<$Res> {
  factory $PlaceResponseCopyWith(
          PlaceResponse value, $Res Function(PlaceResponse) then) =
      _$PlaceResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class _$PlaceResponseCopyWithImpl<$Res>
    implements $PlaceResponseCopyWith<$Res> {
  _$PlaceResponseCopyWithImpl(this._value, this._then);

  final PlaceResponse _value;
  // ignore: unused_field
  final $Res Function(PlaceResponse) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object state = freezed,
    Object city = freezed,
    Object address = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      state: state == freezed ? _value.state : state as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PlaceResponseCopyWith<$Res>
    implements $PlaceResponseCopyWith<$Res> {
  factory _$PlaceResponseCopyWith(
          _PlaceResponse value, $Res Function(_PlaceResponse) then) =
      __$PlaceResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt});
}

/// @nodoc
class __$PlaceResponseCopyWithImpl<$Res>
    extends _$PlaceResponseCopyWithImpl<$Res>
    implements _$PlaceResponseCopyWith<$Res> {
  __$PlaceResponseCopyWithImpl(
      _PlaceResponse _value, $Res Function(_PlaceResponse) _then)
      : super(_value, (v) => _then(v as _PlaceResponse));

  @override
  _PlaceResponse get _value => super._value as _PlaceResponse;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object state = freezed,
    Object city = freezed,
    Object address = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_PlaceResponse(
      id: id == freezed ? _value.id : id as int,
      name: name == freezed ? _value.name : name as String,
      state: state == freezed ? _value.state : state as String,
      city: city == freezed ? _value.city : city as String,
      address: address == freezed ? _value.address : address as String,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlaceResponse implements _PlaceResponse {
  const _$_PlaceResponse(
      {@required @JsonKey(name: 'id') this.id,
      @required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'state') this.state,
      @required @JsonKey(name: 'city') this.city,
      @required @JsonKey(name: 'address') this.address,
      @required @JsonKey(name: 'created_at') this.createdAt})
      : assert(id != null),
        assert(name != null),
        assert(state != null),
        assert(city != null),
        assert(address != null),
        assert(createdAt != null);

  factory _$_PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'state')
  final String state;
  @override
  @JsonKey(name: 'city')
  final String city;
  @override
  @JsonKey(name: 'address')
  final String address;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;

  @override
  String toString() {
    return 'PlaceResponse(id: $id, name: $name, state: $state, city: $city, address: $address, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$PlaceResponseCopyWith<_PlaceResponse> get copyWith =>
      __$PlaceResponseCopyWithImpl<_PlaceResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceResponseToJson(this);
  }
}

abstract class _PlaceResponse implements PlaceResponse {
  const factory _PlaceResponse(
          {@required @JsonKey(name: 'id') int id,
          @required @JsonKey(name: 'name') String name,
          @required @JsonKey(name: 'state') String state,
          @required @JsonKey(name: 'city') String city,
          @required @JsonKey(name: 'address') String address,
          @required @JsonKey(name: 'created_at') DateTime createdAt}) =
      _$_PlaceResponse;

  factory _PlaceResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'state')
  String get state;
  @override
  @JsonKey(name: 'city')
  String get city;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$PlaceResponseCopyWith<_PlaceResponse> get copyWith;
}
