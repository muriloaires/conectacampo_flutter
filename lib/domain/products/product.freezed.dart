// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductTearOff {
  const _$ProductTearOff();

  _Product call(
      {required int id,
      required String name,
      required List<String> synonyms,
      required List<String> ratings,
      required List<String> kinds,
      required List<UnitMeasure> unitMeasures,
      required String createdAt}) {
    return _Product(
      id: id,
      name: name,
      synonyms: synonyms,
      ratings: ratings,
      kinds: kinds,
      unitMeasures: unitMeasures,
      createdAt: createdAt,
    );
  }
}

/// @nodoc
const $Product = _$ProductTearOff();

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get synonyms => throw _privateConstructorUsedError;
  List<String> get ratings => throw _privateConstructorUsedError;
  List<String> get kinds => throw _privateConstructorUsedError;
  List<UnitMeasure> get unitMeasures => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      List<String> synonyms,
      List<String> ratings,
      List<String> kinds,
      List<UnitMeasure> unitMeasures,
      String createdAt});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? synonyms = freezed,
    Object? ratings = freezed,
    Object? kinds = freezed,
    Object? unitMeasures = freezed,
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
      unitMeasures: unitMeasures == freezed
          ? _value.unitMeasures
          : unitMeasures // ignore: cast_nullable_to_non_nullable
              as List<UnitMeasure>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$ProductCopyWith(_Product value, $Res Function(_Product) then) =
      __$ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      List<String> synonyms,
      List<String> ratings,
      List<String> kinds,
      List<UnitMeasure> unitMeasures,
      String createdAt});
}

/// @nodoc
class __$ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$ProductCopyWith<$Res> {
  __$ProductCopyWithImpl(_Product _value, $Res Function(_Product) _then)
      : super(_value, (v) => _then(v as _Product));

  @override
  _Product get _value => super._value as _Product;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? synonyms = freezed,
    Object? ratings = freezed,
    Object? kinds = freezed,
    Object? unitMeasures = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_Product(
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
      unitMeasures: unitMeasures == freezed
          ? _value.unitMeasures
          : unitMeasures // ignore: cast_nullable_to_non_nullable
              as List<UnitMeasure>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Product implements _Product {
  const _$_Product(
      {required this.id,
      required this.name,
      required this.synonyms,
      required this.ratings,
      required this.kinds,
      required this.unitMeasures,
      required this.createdAt});

  @override
  final int id;
  @override
  final String name;
  @override
  final List<String> synonyms;
  @override
  final List<String> ratings;
  @override
  final List<String> kinds;
  @override
  final List<UnitMeasure> unitMeasures;
  @override
  final String createdAt;

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Product &&
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
            (identical(other.unitMeasures, unitMeasures) ||
                const DeepCollectionEquality()
                    .equals(other.unitMeasures, unitMeasures)) &&
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
      const DeepCollectionEquality().hash(unitMeasures) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ProductCopyWith<_Product> get copyWith =>
      __$ProductCopyWithImpl<_Product>(this, _$identity);
}

abstract class _Product implements Product {
  const factory _Product(
      {required int id,
      required String name,
      required List<String> synonyms,
      required List<String> ratings,
      required List<String> kinds,
      required List<UnitMeasure> unitMeasures,
      required String createdAt}) = _$_Product;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<String> get synonyms => throw _privateConstructorUsedError;
  @override
  List<String> get ratings => throw _privateConstructorUsedError;
  @override
  List<String> get kinds => throw _privateConstructorUsedError;
  @override
  List<UnitMeasure> get unitMeasures => throw _privateConstructorUsedError;
  @override
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductCopyWith<_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
