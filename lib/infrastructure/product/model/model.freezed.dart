// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
class _$ProductResponseTearOff {
  const _$ProductResponseTearOff();

  _ProductResponse call(
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'synonyms')
          List<String> synonyms,
      @JsonKey(name: 'ratings')
          List<String> ratings,
      @JsonKey(name: 'kinds')
          List<String> kinds,
      @JsonKey(name: 'measurement_units')
          List<UnitMeasureResponse> measurementUnits,
      @JsonKey(name: 'created_at')
          String createdAt) {
    return _ProductResponse(
      id,
      name,
      synonyms,
      ratings,
      kinds,
      measurementUnits,
      createdAt,
    );
  }

  ProductResponse fromJson(Map<String, Object> json) {
    return ProductResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductResponse = _$ProductResponseTearOff();

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'synonyms')
  List<String> get synonyms => throw _privateConstructorUsedError;
  @JsonKey(name: 'ratings')
  List<String> get ratings => throw _privateConstructorUsedError;
  @JsonKey(name: 'kinds')
  List<String> get kinds => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_units')
  List<UnitMeasureResponse> get measurementUnits =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'synonyms')
          List<String> synonyms,
      @JsonKey(name: 'ratings')
          List<String> ratings,
      @JsonKey(name: 'kinds')
          List<String> kinds,
      @JsonKey(name: 'measurement_units')
          List<UnitMeasureResponse> measurementUnits,
      @JsonKey(name: 'created_at')
          String createdAt});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? synonyms = freezed,
    Object? ratings = freezed,
    Object? kinds = freezed,
    Object? measurementUnits = freezed,
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
      synonyms: synonyms == freezed
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kinds: kinds == freezed
          ? _value.kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      measurementUnits: measurementUnits == freezed
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitMeasureResponse>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(
          _ProductResponse value, $Res Function(_ProductResponse) then) =
      __$ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'synonyms')
          List<String> synonyms,
      @JsonKey(name: 'ratings')
          List<String> ratings,
      @JsonKey(name: 'kinds')
          List<String> kinds,
      @JsonKey(name: 'measurement_units')
          List<UnitMeasureResponse> measurementUnits,
      @JsonKey(name: 'created_at')
          String createdAt});
}

/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(
      _ProductResponse _value, $Res Function(_ProductResponse) _then)
      : super(_value, (v) => _then(v as _ProductResponse));

  @override
  _ProductResponse get _value => super._value as _ProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? synonyms = freezed,
    Object? ratings = freezed,
    Object? kinds = freezed,
    Object? measurementUnits = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ProductResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      synonyms == freezed
          ? _value.synonyms
          : synonyms // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kinds == freezed
          ? _value.kinds
          : kinds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      measurementUnits == freezed
          ? _value.measurementUnits
          : measurementUnits // ignore: cast_nullable_to_non_nullable
              as List<UnitMeasureResponse>,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponse implements _ProductResponse {
  const _$_ProductResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'synonyms') this.synonyms,
      @JsonKey(name: 'ratings') this.ratings,
      @JsonKey(name: 'kinds') this.kinds,
      @JsonKey(name: 'measurement_units') this.measurementUnits,
      @JsonKey(name: 'created_at') this.createdAt);

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'synonyms')
  final List<String> synonyms;
  @override
  @JsonKey(name: 'ratings')
  final List<String> ratings;
  @override
  @JsonKey(name: 'kinds')
  final List<String> kinds;
  @override
  @JsonKey(name: 'measurement_units')
  final List<UnitMeasureResponse> measurementUnits;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ProductResponse(id: $id, name: $name, synonyms: $synonyms, ratings: $ratings, kinds: $kinds, measurementUnits: $measurementUnits, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.synonyms, synonyms) ||
                const DeepCollectionEquality()
                    .equals(other.synonyms, synonyms)) &&
            (identical(other.ratings, ratings) ||
                const DeepCollectionEquality()
                    .equals(other.ratings, ratings)) &&
            (identical(other.kinds, kinds) ||
                const DeepCollectionEquality().equals(other.kinds, kinds)) &&
            (identical(other.measurementUnits, measurementUnits) ||
                const DeepCollectionEquality()
                    .equals(other.measurementUnits, measurementUnits)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(synonyms) ^
      const DeepCollectionEquality().hash(ratings) ^
      const DeepCollectionEquality().hash(kinds) ^
      const DeepCollectionEquality().hash(measurementUnits) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
      @JsonKey(name: 'id')
          int id,
      @JsonKey(name: 'name')
          String name,
      @JsonKey(name: 'synonyms')
          List<String> synonyms,
      @JsonKey(name: 'ratings')
          List<String> ratings,
      @JsonKey(name: 'kinds')
          List<String> kinds,
      @JsonKey(name: 'measurement_units')
          List<UnitMeasureResponse> measurementUnits,
      @JsonKey(name: 'created_at')
          String createdAt) = _$_ProductResponse;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'synonyms')
  List<String> get synonyms => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ratings')
  List<String> get ratings => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kinds')
  List<String> get kinds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'measurement_units')
  List<UnitMeasureResponse> get measurementUnits =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitMeasureResponse _$UnitMeasureResponseFromJson(Map<String, dynamic> json) {
  return _UnitMeasureResponse.fromJson(json);
}

/// @nodoc
class _$UnitMeasureResponseTearOff {
  const _$UnitMeasureResponseTearOff();

  _UnitMeasureResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt) {
    return _UnitMeasureResponse(
      id,
      name,
      createdAt,
      updatedAt,
    );
  }

  UnitMeasureResponse fromJson(Map<String, Object> json) {
    return UnitMeasureResponse.fromJson(json);
  }
}

/// @nodoc
const $UnitMeasureResponse = _$UnitMeasureResponseTearOff();

/// @nodoc
mixin _$UnitMeasureResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitMeasureResponseCopyWith<UnitMeasureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitMeasureResponseCopyWith<$Res> {
  factory $UnitMeasureResponseCopyWith(
          UnitMeasureResponse value, $Res Function(UnitMeasureResponse) then) =
      _$UnitMeasureResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$UnitMeasureResponseCopyWithImpl<$Res>
    implements $UnitMeasureResponseCopyWith<$Res> {
  _$UnitMeasureResponseCopyWithImpl(this._value, this._then);

  final UnitMeasureResponse _value;
  // ignore: unused_field
  final $Res Function(UnitMeasureResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
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
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UnitMeasureResponseCopyWith<$Res>
    implements $UnitMeasureResponseCopyWith<$Res> {
  factory _$UnitMeasureResponseCopyWith(_UnitMeasureResponse value,
          $Res Function(_UnitMeasureResponse) then) =
      __$UnitMeasureResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$UnitMeasureResponseCopyWithImpl<$Res>
    extends _$UnitMeasureResponseCopyWithImpl<$Res>
    implements _$UnitMeasureResponseCopyWith<$Res> {
  __$UnitMeasureResponseCopyWithImpl(
      _UnitMeasureResponse _value, $Res Function(_UnitMeasureResponse) _then)
      : super(_value, (v) => _then(v as _UnitMeasureResponse));

  @override
  _UnitMeasureResponse get _value => super._value as _UnitMeasureResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_UnitMeasureResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitMeasureResponse implements _UnitMeasureResponse {
  const _$_UnitMeasureResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt);

  factory _$_UnitMeasureResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitMeasureResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'UnitMeasureResponse(id: $id, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnitMeasureResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UnitMeasureResponseCopyWith<_UnitMeasureResponse> get copyWith =>
      __$UnitMeasureResponseCopyWithImpl<_UnitMeasureResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitMeasureResponseToJson(this);
  }
}

abstract class _UnitMeasureResponse implements UnitMeasureResponse {
  const factory _UnitMeasureResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt) = _$_UnitMeasureResponse;

  factory _UnitMeasureResponse.fromJson(Map<String, dynamic> json) =
      _$_UnitMeasureResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnitMeasureResponseCopyWith<_UnitMeasureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
