// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceResponse _$PlaceResponseFromJson(Map<String, dynamic> json) {
  return _PlaceResponse.fromJson(json);
}

/// @nodoc
class _$PlaceResponseTearOff {
  const _$PlaceResponseTearOff();

  _PlaceResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt) {
    return _PlaceResponse(
      id,
      name,
      state,
      city,
      address,
      createdAt,
    );
  }

  PlaceResponse fromJson(Map<String, Object> json) {
    return PlaceResponse.fromJson(json);
  }
}

/// @nodoc
const $PlaceResponse = _$PlaceResponseTearOff();

/// @nodoc
mixin _$PlaceResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceResponseCopyWith<PlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
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
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? city = freezed,
    Object? address = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_PlaceResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceResponse implements _PlaceResponse {
  const _$_PlaceResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'state') this.state,
      @JsonKey(name: 'city') this.city,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'created_at') this.createdAt);

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
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'state') String state,
      @JsonKey(name: 'city') String city,
      @JsonKey(name: 'address') String address,
      @JsonKey(name: 'created_at') DateTime createdAt) = _$_PlaceResponse;

  factory _PlaceResponse.fromJson(Map<String, dynamic> json) =
      _$_PlaceResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'state')
  String get state => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'city')
  String get city => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PlaceResponseCopyWith<_PlaceResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
