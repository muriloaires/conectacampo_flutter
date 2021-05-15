// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PlaceListResponse _$PlaceListResponseFromJson(Map<String, dynamic> json) {
  return _PlaceListResponse.fromJson(json);
}

/// @nodoc
class _$PlaceListResponseTearOff {
  const _$PlaceListResponseTearOff();

// ignore: unused_element
  _PlaceListResponse call({@required List<PlaceResponse> places}) {
    return _PlaceListResponse(
      places: places,
    );
  }

// ignore: unused_element
  PlaceListResponse fromJson(Map<String, Object> json) {
    return PlaceListResponse.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PlaceListResponse = _$PlaceListResponseTearOff();

/// @nodoc
mixin _$PlaceListResponse {
  List<PlaceResponse> get places;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PlaceListResponseCopyWith<PlaceListResponse> get copyWith;
}

/// @nodoc
abstract class $PlaceListResponseCopyWith<$Res> {
  factory $PlaceListResponseCopyWith(
          PlaceListResponse value, $Res Function(PlaceListResponse) then) =
      _$PlaceListResponseCopyWithImpl<$Res>;
  $Res call({List<PlaceResponse> places});
}

/// @nodoc
class _$PlaceListResponseCopyWithImpl<$Res>
    implements $PlaceListResponseCopyWith<$Res> {
  _$PlaceListResponseCopyWithImpl(this._value, this._then);

  final PlaceListResponse _value;
  // ignore: unused_field
  final $Res Function(PlaceListResponse) _then;

  @override
  $Res call({
    Object places = freezed,
  }) {
    return _then(_value.copyWith(
      places: places == freezed ? _value.places : places as List<PlaceResponse>,
    ));
  }
}

/// @nodoc
abstract class _$PlaceListResponseCopyWith<$Res>
    implements $PlaceListResponseCopyWith<$Res> {
  factory _$PlaceListResponseCopyWith(
          _PlaceListResponse value, $Res Function(_PlaceListResponse) then) =
      __$PlaceListResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<PlaceResponse> places});
}

/// @nodoc
class __$PlaceListResponseCopyWithImpl<$Res>
    extends _$PlaceListResponseCopyWithImpl<$Res>
    implements _$PlaceListResponseCopyWith<$Res> {
  __$PlaceListResponseCopyWithImpl(
      _PlaceListResponse _value, $Res Function(_PlaceListResponse) _then)
      : super(_value, (v) => _then(v as _PlaceListResponse));

  @override
  _PlaceListResponse get _value => super._value as _PlaceListResponse;

  @override
  $Res call({
    Object places = freezed,
  }) {
    return _then(_PlaceListResponse(
      places: places == freezed ? _value.places : places as List<PlaceResponse>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PlaceListResponse implements _PlaceListResponse {
  const _$_PlaceListResponse({@required this.places}) : assert(places != null);

  factory _$_PlaceListResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceListResponseFromJson(json);

  @override
  final List<PlaceResponse> places;

  @override
  String toString() {
    return 'PlaceListResponse(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceListResponse &&
            (identical(other.places, places) ||
                const DeepCollectionEquality().equals(other.places, places)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(places);

  @JsonKey(ignore: true)
  @override
  _$PlaceListResponseCopyWith<_PlaceListResponse> get copyWith =>
      __$PlaceListResponseCopyWithImpl<_PlaceListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PlaceListResponseToJson(this);
  }
}

abstract class _PlaceListResponse implements PlaceListResponse {
  const factory _PlaceListResponse({@required List<PlaceResponse> places}) =
      _$_PlaceListResponse;

  factory _PlaceListResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceListResponse.fromJson;

  @override
  List<PlaceResponse> get places;
  @override
  @JsonKey(ignore: true)
  _$PlaceListResponseCopyWith<_PlaceListResponse> get copyWith;
}

PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) {
  return _PlaceResponse.fromJson(json);
}

/// @nodoc
class _$PlaceResponseTearOff {
  const _$PlaceResponseTearOff();

// ignore: unused_element
  _PlaceResponse call(
      {@required @JsonKey(name: 'name') String name,
      @required @JsonKey(name: 'state') String state,
      @required @JsonKey(name: 'city') String city,
      @required @JsonKey(name: 'address') String address,
      @required @JsonKey(name: 'created_at') DateTime createdAt}) {
    return _PlaceResponse(
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
      {@JsonKey(name: 'name') String name,
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
    Object name = freezed,
    Object state = freezed,
    Object city = freezed,
    Object address = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_value.copyWith(
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
      {@JsonKey(name: 'name') String name,
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
    Object name = freezed,
    Object state = freezed,
    Object city = freezed,
    Object address = freezed,
    Object createdAt = freezed,
  }) {
    return _then(_PlaceResponse(
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
      {@required @JsonKey(name: 'name') this.name,
      @required @JsonKey(name: 'state') this.state,
      @required @JsonKey(name: 'city') this.city,
      @required @JsonKey(name: 'address') this.address,
      @required @JsonKey(name: 'created_at') this.createdAt})
      : assert(name != null),
        assert(state != null),
        assert(city != null),
        assert(address != null),
        assert(createdAt != null);

  factory _$_PlaceResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_PlaceResponseFromJson(json);

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
    return 'PlaceResponse(name: $name, state: $state, city: $city, address: $address, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceResponse &&
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
          {@required @JsonKey(name: 'name') String name,
          @required @JsonKey(name: 'state') String state,
          @required @JsonKey(name: 'city') String city,
          @required @JsonKey(name: 'address') String address,
          @required @JsonKey(name: 'created_at') DateTime createdAt}) =
      _$_PlaceResponse;

  factory _PlaceResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceResponse.fromJson;

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
