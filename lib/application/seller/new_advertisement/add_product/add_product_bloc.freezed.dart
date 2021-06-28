// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddProductEventTearOff {
  const _$AddProductEventTearOff();

  _Started started() {
    return const _Started();
  }

  ProductSelected productSelected(Product? product) {
    return ProductSelected(
      product,
    );
  }

  KindSelected kindSelected(String? kindSelected) {
    return KindSelected(
      kindSelected,
    );
  }

  RatingSelected ratingSelected(String? ratingSelected) {
    return RatingSelected(
      ratingSelected,
    );
  }

  UnitMeasureSelected unitMeasureSelected(UnitMeasure? unitMeasureSelected) {
    return UnitMeasureSelected(
      unitMeasureSelected,
    );
  }
}

/// @nodoc
const $AddProductEvent = _$AddProductEventTearOff();

/// @nodoc
mixin _$AddProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductEventCopyWith<$Res> {
  factory $AddProductEventCopyWith(
          AddProductEvent value, $Res Function(AddProductEvent) then) =
      _$AddProductEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddProductEventCopyWithImpl<$Res>
    implements $AddProductEventCopyWith<$Res> {
  _$AddProductEventCopyWithImpl(this._value, this._then);

  final AddProductEvent _value;
  // ignore: unused_field
  final $Res Function(AddProductEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AddProductEventCopyWithImpl<$Res>
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
    return 'AddProductEvent.started()';
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
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
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
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddProductEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $ProductSelectedCopyWith<$Res> {
  factory $ProductSelectedCopyWith(
          ProductSelected value, $Res Function(ProductSelected) then) =
      _$ProductSelectedCopyWithImpl<$Res>;
  $Res call({Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductSelectedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $ProductSelectedCopyWith<$Res> {
  _$ProductSelectedCopyWithImpl(
      ProductSelected _value, $Res Function(ProductSelected) _then)
      : super(_value, (v) => _then(v as ProductSelected));

  @override
  ProductSelected get _value => super._value as ProductSelected;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(ProductSelected(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }

  @override
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$ProductSelected implements ProductSelected {
  const _$ProductSelected(this.product);

  @override
  final Product? product;

  @override
  String toString() {
    return 'AddProductEvent.productSelected(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSelected &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $ProductSelectedCopyWith<ProductSelected> get copyWith =>
      _$ProductSelectedCopyWithImpl<ProductSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) {
    return productSelected(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) {
    return productSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected(this);
    }
    return orElse();
  }
}

abstract class ProductSelected implements AddProductEvent {
  const factory ProductSelected(Product? product) = _$ProductSelected;

  Product? get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductSelectedCopyWith<ProductSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KindSelectedCopyWith<$Res> {
  factory $KindSelectedCopyWith(
          KindSelected value, $Res Function(KindSelected) then) =
      _$KindSelectedCopyWithImpl<$Res>;
  $Res call({String? kindSelected});
}

/// @nodoc
class _$KindSelectedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $KindSelectedCopyWith<$Res> {
  _$KindSelectedCopyWithImpl(
      KindSelected _value, $Res Function(KindSelected) _then)
      : super(_value, (v) => _then(v as KindSelected));

  @override
  KindSelected get _value => super._value as KindSelected;

  @override
  $Res call({
    Object? kindSelected = freezed,
  }) {
    return _then(KindSelected(
      kindSelected == freezed
          ? _value.kindSelected
          : kindSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KindSelected implements KindSelected {
  const _$KindSelected(this.kindSelected);

  @override
  final String? kindSelected;

  @override
  String toString() {
    return 'AddProductEvent.kindSelected(kindSelected: $kindSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KindSelected &&
            (identical(other.kindSelected, kindSelected) ||
                const DeepCollectionEquality()
                    .equals(other.kindSelected, kindSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(kindSelected);

  @JsonKey(ignore: true)
  @override
  $KindSelectedCopyWith<KindSelected> get copyWith =>
      _$KindSelectedCopyWithImpl<KindSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) {
    return kindSelected(this.kindSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (kindSelected != null) {
      return kindSelected(this.kindSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) {
    return kindSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (kindSelected != null) {
      return kindSelected(this);
    }
    return orElse();
  }
}

abstract class KindSelected implements AddProductEvent {
  const factory KindSelected(String? kindSelected) = _$KindSelected;

  String? get kindSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KindSelectedCopyWith<KindSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingSelectedCopyWith<$Res> {
  factory $RatingSelectedCopyWith(
          RatingSelected value, $Res Function(RatingSelected) then) =
      _$RatingSelectedCopyWithImpl<$Res>;
  $Res call({String? ratingSelected});
}

/// @nodoc
class _$RatingSelectedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $RatingSelectedCopyWith<$Res> {
  _$RatingSelectedCopyWithImpl(
      RatingSelected _value, $Res Function(RatingSelected) _then)
      : super(_value, (v) => _then(v as RatingSelected));

  @override
  RatingSelected get _value => super._value as RatingSelected;

  @override
  $Res call({
    Object? ratingSelected = freezed,
  }) {
    return _then(RatingSelected(
      ratingSelected == freezed
          ? _value.ratingSelected
          : ratingSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RatingSelected implements RatingSelected {
  const _$RatingSelected(this.ratingSelected);

  @override
  final String? ratingSelected;

  @override
  String toString() {
    return 'AddProductEvent.ratingSelected(ratingSelected: $ratingSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingSelected &&
            (identical(other.ratingSelected, ratingSelected) ||
                const DeepCollectionEquality()
                    .equals(other.ratingSelected, ratingSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ratingSelected);

  @JsonKey(ignore: true)
  @override
  $RatingSelectedCopyWith<RatingSelected> get copyWith =>
      _$RatingSelectedCopyWithImpl<RatingSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) {
    return ratingSelected(this.ratingSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (ratingSelected != null) {
      return ratingSelected(this.ratingSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) {
    return ratingSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (ratingSelected != null) {
      return ratingSelected(this);
    }
    return orElse();
  }
}

abstract class RatingSelected implements AddProductEvent {
  const factory RatingSelected(String? ratingSelected) = _$RatingSelected;

  String? get ratingSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingSelectedCopyWith<RatingSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitMeasureSelectedCopyWith<$Res> {
  factory $UnitMeasureSelectedCopyWith(
          UnitMeasureSelected value, $Res Function(UnitMeasureSelected) then) =
      _$UnitMeasureSelectedCopyWithImpl<$Res>;
  $Res call({UnitMeasure? unitMeasureSelected});

  $UnitMeasureCopyWith<$Res>? get unitMeasureSelected;
}

/// @nodoc
class _$UnitMeasureSelectedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $UnitMeasureSelectedCopyWith<$Res> {
  _$UnitMeasureSelectedCopyWithImpl(
      UnitMeasureSelected _value, $Res Function(UnitMeasureSelected) _then)
      : super(_value, (v) => _then(v as UnitMeasureSelected));

  @override
  UnitMeasureSelected get _value => super._value as UnitMeasureSelected;

  @override
  $Res call({
    Object? unitMeasureSelected = freezed,
  }) {
    return _then(UnitMeasureSelected(
      unitMeasureSelected == freezed
          ? _value.unitMeasureSelected
          : unitMeasureSelected // ignore: cast_nullable_to_non_nullable
              as UnitMeasure?,
    ));
  }

  @override
  $UnitMeasureCopyWith<$Res>? get unitMeasureSelected {
    if (_value.unitMeasureSelected == null) {
      return null;
    }

    return $UnitMeasureCopyWith<$Res>(_value.unitMeasureSelected!, (value) {
      return _then(_value.copyWith(unitMeasureSelected: value));
    });
  }
}

/// @nodoc

class _$UnitMeasureSelected implements UnitMeasureSelected {
  const _$UnitMeasureSelected(this.unitMeasureSelected);

  @override
  final UnitMeasure? unitMeasureSelected;

  @override
  String toString() {
    return 'AddProductEvent.unitMeasureSelected(unitMeasureSelected: $unitMeasureSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitMeasureSelected &&
            (identical(other.unitMeasureSelected, unitMeasureSelected) ||
                const DeepCollectionEquality()
                    .equals(other.unitMeasureSelected, unitMeasureSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(unitMeasureSelected);

  @JsonKey(ignore: true)
  @override
  $UnitMeasureSelectedCopyWith<UnitMeasureSelected> get copyWith =>
      _$UnitMeasureSelectedCopyWithImpl<UnitMeasureSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Product? product) productSelected,
    required TResult Function(String? kindSelected) kindSelected,
    required TResult Function(String? ratingSelected) ratingSelected,
    required TResult Function(UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
  }) {
    return unitMeasureSelected(this.unitMeasureSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Product? product)? productSelected,
    TResult Function(String? kindSelected)? kindSelected,
    TResult Function(String? ratingSelected)? ratingSelected,
    TResult Function(UnitMeasure? unitMeasureSelected)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (unitMeasureSelected != null) {
      return unitMeasureSelected(this.unitMeasureSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(KindSelected value) kindSelected,
    required TResult Function(RatingSelected value) ratingSelected,
    required TResult Function(UnitMeasureSelected value) unitMeasureSelected,
  }) {
    return unitMeasureSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    required TResult orElse(),
  }) {
    if (unitMeasureSelected != null) {
      return unitMeasureSelected(this);
    }
    return orElse();
  }
}

abstract class UnitMeasureSelected implements AddProductEvent {
  const factory UnitMeasureSelected(UnitMeasure? unitMeasureSelected) =
      _$UnitMeasureSelected;

  UnitMeasure? get unitMeasureSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitMeasureSelectedCopyWith<UnitMeasureSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddProductStateTearOff {
  const _$AddProductStateTearOff();

  _AddProductState call(
      {required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required Option<Product> optionOfProductSelected,
      required Option<String> optionOfKindSelected,
      required Option<String> optionOfRatingSelected,
      required Option<UnitMeasure> optionOfUnitMeasureSelected,
      required Option<int> optionOfQuantity}) {
    return _AddProductState(
      isLoading: isLoading,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess,
      optionOfProductSelected: optionOfProductSelected,
      optionOfKindSelected: optionOfKindSelected,
      optionOfRatingSelected: optionOfRatingSelected,
      optionOfUnitMeasureSelected: optionOfUnitMeasureSelected,
      optionOfQuantity: optionOfQuantity,
    );
  }
}

/// @nodoc
const $AddProductState = _$AddProductStateTearOff();

/// @nodoc
mixin _$AddProductState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, List<Product>>>
      get optionProductsFailureOrSuccess => throw _privateConstructorUsedError;
  Option<Product> get optionOfProductSelected =>
      throw _privateConstructorUsedError;
  Option<String> get optionOfKindSelected => throw _privateConstructorUsedError;
  Option<String> get optionOfRatingSelected =>
      throw _privateConstructorUsedError;
  Option<UnitMeasure> get optionOfUnitMeasureSelected =>
      throw _privateConstructorUsedError;
  Option<int> get optionOfQuantity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddProductStateCopyWith<AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductStateCopyWith<$Res> {
  factory $AddProductStateCopyWith(
          AddProductState value, $Res Function(AddProductState) then) =
      _$AddProductStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      Option<Product> optionOfProductSelected,
      Option<String> optionOfKindSelected,
      Option<String> optionOfRatingSelected,
      Option<UnitMeasure> optionOfUnitMeasureSelected,
      Option<int> optionOfQuantity});
}

/// @nodoc
class _$AddProductStateCopyWithImpl<$Res>
    implements $AddProductStateCopyWith<$Res> {
  _$AddProductStateCopyWithImpl(this._value, this._then);

  final AddProductState _value;
  // ignore: unused_field
  final $Res Function(AddProductState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optionProductsFailureOrSuccess = freezed,
    Object? optionOfProductSelected = freezed,
    Object? optionOfKindSelected = freezed,
    Object? optionOfRatingSelected = freezed,
    Object? optionOfUnitMeasureSelected = freezed,
    Object? optionOfQuantity = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess == freezed
          ? _value.optionProductsFailureOrSuccess
          : optionProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
      optionOfProductSelected: optionOfProductSelected == freezed
          ? _value.optionOfProductSelected
          : optionOfProductSelected // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      optionOfKindSelected: optionOfKindSelected == freezed
          ? _value.optionOfKindSelected
          : optionOfKindSelected // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      optionOfRatingSelected: optionOfRatingSelected == freezed
          ? _value.optionOfRatingSelected
          : optionOfRatingSelected // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      optionOfUnitMeasureSelected: optionOfUnitMeasureSelected == freezed
          ? _value.optionOfUnitMeasureSelected
          : optionOfUnitMeasureSelected // ignore: cast_nullable_to_non_nullable
              as Option<UnitMeasure>,
      optionOfQuantity: optionOfQuantity == freezed
          ? _value.optionOfQuantity
          : optionOfQuantity // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc
abstract class _$AddProductStateCopyWith<$Res>
    implements $AddProductStateCopyWith<$Res> {
  factory _$AddProductStateCopyWith(
          _AddProductState value, $Res Function(_AddProductState) then) =
      __$AddProductStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      Option<Product> optionOfProductSelected,
      Option<String> optionOfKindSelected,
      Option<String> optionOfRatingSelected,
      Option<UnitMeasure> optionOfUnitMeasureSelected,
      Option<int> optionOfQuantity});
}

/// @nodoc
class __$AddProductStateCopyWithImpl<$Res>
    extends _$AddProductStateCopyWithImpl<$Res>
    implements _$AddProductStateCopyWith<$Res> {
  __$AddProductStateCopyWithImpl(
      _AddProductState _value, $Res Function(_AddProductState) _then)
      : super(_value, (v) => _then(v as _AddProductState));

  @override
  _AddProductState get _value => super._value as _AddProductState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? optionProductsFailureOrSuccess = freezed,
    Object? optionOfProductSelected = freezed,
    Object? optionOfKindSelected = freezed,
    Object? optionOfRatingSelected = freezed,
    Object? optionOfUnitMeasureSelected = freezed,
    Object? optionOfQuantity = freezed,
  }) {
    return _then(_AddProductState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess == freezed
          ? _value.optionProductsFailureOrSuccess
          : optionProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
      optionOfProductSelected: optionOfProductSelected == freezed
          ? _value.optionOfProductSelected
          : optionOfProductSelected // ignore: cast_nullable_to_non_nullable
              as Option<Product>,
      optionOfKindSelected: optionOfKindSelected == freezed
          ? _value.optionOfKindSelected
          : optionOfKindSelected // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      optionOfRatingSelected: optionOfRatingSelected == freezed
          ? _value.optionOfRatingSelected
          : optionOfRatingSelected // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      optionOfUnitMeasureSelected: optionOfUnitMeasureSelected == freezed
          ? _value.optionOfUnitMeasureSelected
          : optionOfUnitMeasureSelected // ignore: cast_nullable_to_non_nullable
              as Option<UnitMeasure>,
      optionOfQuantity: optionOfQuantity == freezed
          ? _value.optionOfQuantity
          : optionOfQuantity // ignore: cast_nullable_to_non_nullable
              as Option<int>,
    ));
  }
}

/// @nodoc

class _$_AddProductState implements _AddProductState {
  const _$_AddProductState(
      {required this.isLoading,
      required this.optionProductsFailureOrSuccess,
      required this.optionOfProductSelected,
      required this.optionOfKindSelected,
      required this.optionOfRatingSelected,
      required this.optionOfUnitMeasureSelected,
      required this.optionOfQuantity});

  @override
  final bool isLoading;
  @override
  final Option<Either<ProductFailure, List<Product>>>
      optionProductsFailureOrSuccess;
  @override
  final Option<Product> optionOfProductSelected;
  @override
  final Option<String> optionOfKindSelected;
  @override
  final Option<String> optionOfRatingSelected;
  @override
  final Option<UnitMeasure> optionOfUnitMeasureSelected;
  @override
  final Option<int> optionOfQuantity;

  @override
  String toString() {
    return 'AddProductState(isLoading: $isLoading, optionProductsFailureOrSuccess: $optionProductsFailureOrSuccess, optionOfProductSelected: $optionOfProductSelected, optionOfKindSelected: $optionOfKindSelected, optionOfRatingSelected: $optionOfRatingSelected, optionOfUnitMeasureSelected: $optionOfUnitMeasureSelected, optionOfQuantity: $optionOfQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProductState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.optionProductsFailureOrSuccess,
                    optionProductsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionProductsFailureOrSuccess,
                    optionProductsFailureOrSuccess)) &&
            (identical(
                    other.optionOfProductSelected, optionOfProductSelected) ||
                const DeepCollectionEquality().equals(
                    other.optionOfProductSelected, optionOfProductSelected)) &&
            (identical(other.optionOfKindSelected, optionOfKindSelected) ||
                const DeepCollectionEquality().equals(
                    other.optionOfKindSelected, optionOfKindSelected)) &&
            (identical(other.optionOfRatingSelected, optionOfRatingSelected) ||
                const DeepCollectionEquality().equals(
                    other.optionOfRatingSelected, optionOfRatingSelected)) &&
            (identical(other.optionOfUnitMeasureSelected,
                    optionOfUnitMeasureSelected) ||
                const DeepCollectionEquality().equals(
                    other.optionOfUnitMeasureSelected,
                    optionOfUnitMeasureSelected)) &&
            (identical(other.optionOfQuantity, optionOfQuantity) ||
                const DeepCollectionEquality()
                    .equals(other.optionOfQuantity, optionOfQuantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(optionProductsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(optionOfProductSelected) ^
      const DeepCollectionEquality().hash(optionOfKindSelected) ^
      const DeepCollectionEquality().hash(optionOfRatingSelected) ^
      const DeepCollectionEquality().hash(optionOfUnitMeasureSelected) ^
      const DeepCollectionEquality().hash(optionOfQuantity);

  @JsonKey(ignore: true)
  @override
  _$AddProductStateCopyWith<_AddProductState> get copyWith =>
      __$AddProductStateCopyWithImpl<_AddProductState>(this, _$identity);
}

abstract class _AddProductState implements AddProductState {
  const factory _AddProductState(
      {required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required Option<Product> optionOfProductSelected,
      required Option<String> optionOfKindSelected,
      required Option<String> optionOfRatingSelected,
      required Option<UnitMeasure> optionOfUnitMeasureSelected,
      required Option<int> optionOfQuantity}) = _$_AddProductState;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, List<Product>>>
      get optionProductsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  Option<Product> get optionOfProductSelected =>
      throw _privateConstructorUsedError;
  @override
  Option<String> get optionOfKindSelected => throw _privateConstructorUsedError;
  @override
  Option<String> get optionOfRatingSelected =>
      throw _privateConstructorUsedError;
  @override
  Option<UnitMeasure> get optionOfUnitMeasureSelected =>
      throw _privateConstructorUsedError;
  @override
  Option<int> get optionOfQuantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddProductStateCopyWith<_AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
