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

  _Started started(NewAdvertisement newAdvertisement) {
    return _Started(
      newAdvertisement,
    );
  }

  ProductSelected productSelected(int index, Product? product) {
    return ProductSelected(
      index,
      product,
    );
  }

  KindSelected kindSelected(int index, String? kindSelected) {
    return KindSelected(
      index,
      kindSelected,
    );
  }

  RatingSelected ratingSelected(int index, String? ratingSelected) {
    return RatingSelected(
      index,
      ratingSelected,
    );
  }

  UnitMeasureSelected unitMeasureSelected(
      int index, UnitMeasure? unitMeasureSelected) {
    return UnitMeasureSelected(
      index,
      unitMeasureSelected,
    );
  }

  QuantityChanged quantityChanged(int index, String quantity) {
    return QuantityChanged(
      index,
      quantity,
    );
  }

  ObservationChanged observationChanged(int index, String observation) {
    return ObservationChanged(
      index,
      observation,
    );
  }

  AddMoreTap addMoreTap() {
    return const AddMoreTap();
  }

  BtnProceedTap btnProceedTap() {
    return const BtnProceedTap();
  }
}

/// @nodoc
const $AddProductEvent = _$AddProductEventTearOff();

/// @nodoc
mixin _$AddProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
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
  $Res call({NewAdvertisement newAdvertisement});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AddProductEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
  }) {
    return _then(_Started(
      newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
    ));
  }

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement {
    return $NewAdvertisementCopyWith<$Res>(_value.newAdvertisement, (value) {
      return _then(_value.copyWith(newAdvertisement: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.newAdvertisement);

  @override
  final NewAdvertisement newAdvertisement;

  @override
  String toString() {
    return 'AddProductEvent.started(newAdvertisement: $newAdvertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.newAdvertisement, newAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.newAdvertisement, newAdvertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newAdvertisement);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return started(newAdvertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(newAdvertisement);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
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
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddProductEvent {
  const factory _Started(NewAdvertisement newAdvertisement) = _$_Started;

  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductSelectedCopyWith<$Res> {
  factory $ProductSelectedCopyWith(
          ProductSelected value, $Res Function(ProductSelected) then) =
      _$ProductSelectedCopyWithImpl<$Res>;
  $Res call({int index, Product? product});

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
    Object? index = freezed,
    Object? product = freezed,
  }) {
    return _then(ProductSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
  const _$ProductSelected(this.index, this.product);

  @override
  final int index;
  @override
  final Product? product;

  @override
  String toString() {
    return 'AddProductEvent.productSelected(index: $index, product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ProductSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  $ProductSelectedCopyWith<ProductSelected> get copyWith =>
      _$ProductSelectedCopyWithImpl<ProductSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return productSelected(index, product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected(index, product);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
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
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected(this);
    }
    return orElse();
  }
}

abstract class ProductSelected implements AddProductEvent {
  const factory ProductSelected(int index, Product? product) =
      _$ProductSelected;

  int get index => throw _privateConstructorUsedError;
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
  $Res call({int index, String? kindSelected});
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
    Object? index = freezed,
    Object? kindSelected = freezed,
  }) {
    return _then(KindSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      kindSelected == freezed
          ? _value.kindSelected
          : kindSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$KindSelected implements KindSelected {
  const _$KindSelected(this.index, this.kindSelected);

  @override
  final int index;
  @override
  final String? kindSelected;

  @override
  String toString() {
    return 'AddProductEvent.kindSelected(index: $index, kindSelected: $kindSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is KindSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.kindSelected, kindSelected) ||
                const DeepCollectionEquality()
                    .equals(other.kindSelected, kindSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(kindSelected);

  @JsonKey(ignore: true)
  @override
  $KindSelectedCopyWith<KindSelected> get copyWith =>
      _$KindSelectedCopyWithImpl<KindSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return kindSelected(index, this.kindSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (kindSelected != null) {
      return kindSelected(index, this.kindSelected);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
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
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (kindSelected != null) {
      return kindSelected(this);
    }
    return orElse();
  }
}

abstract class KindSelected implements AddProductEvent {
  const factory KindSelected(int index, String? kindSelected) = _$KindSelected;

  int get index => throw _privateConstructorUsedError;
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
  $Res call({int index, String? ratingSelected});
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
    Object? index = freezed,
    Object? ratingSelected = freezed,
  }) {
    return _then(RatingSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      ratingSelected == freezed
          ? _value.ratingSelected
          : ratingSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RatingSelected implements RatingSelected {
  const _$RatingSelected(this.index, this.ratingSelected);

  @override
  final int index;
  @override
  final String? ratingSelected;

  @override
  String toString() {
    return 'AddProductEvent.ratingSelected(index: $index, ratingSelected: $ratingSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is RatingSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.ratingSelected, ratingSelected) ||
                const DeepCollectionEquality()
                    .equals(other.ratingSelected, ratingSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(ratingSelected);

  @JsonKey(ignore: true)
  @override
  $RatingSelectedCopyWith<RatingSelected> get copyWith =>
      _$RatingSelectedCopyWithImpl<RatingSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return ratingSelected(index, this.ratingSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (ratingSelected != null) {
      return ratingSelected(index, this.ratingSelected);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
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
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (ratingSelected != null) {
      return ratingSelected(this);
    }
    return orElse();
  }
}

abstract class RatingSelected implements AddProductEvent {
  const factory RatingSelected(int index, String? ratingSelected) =
      _$RatingSelected;

  int get index => throw _privateConstructorUsedError;
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
  $Res call({int index, UnitMeasure? unitMeasureSelected});

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
    Object? index = freezed,
    Object? unitMeasureSelected = freezed,
  }) {
    return _then(UnitMeasureSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
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
  const _$UnitMeasureSelected(this.index, this.unitMeasureSelected);

  @override
  final int index;
  @override
  final UnitMeasure? unitMeasureSelected;

  @override
  String toString() {
    return 'AddProductEvent.unitMeasureSelected(index: $index, unitMeasureSelected: $unitMeasureSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UnitMeasureSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.unitMeasureSelected, unitMeasureSelected) ||
                const DeepCollectionEquality()
                    .equals(other.unitMeasureSelected, unitMeasureSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(unitMeasureSelected);

  @JsonKey(ignore: true)
  @override
  $UnitMeasureSelectedCopyWith<UnitMeasureSelected> get copyWith =>
      _$UnitMeasureSelectedCopyWithImpl<UnitMeasureSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return unitMeasureSelected(index, this.unitMeasureSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (unitMeasureSelected != null) {
      return unitMeasureSelected(index, this.unitMeasureSelected);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
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
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (unitMeasureSelected != null) {
      return unitMeasureSelected(this);
    }
    return orElse();
  }
}

abstract class UnitMeasureSelected implements AddProductEvent {
  const factory UnitMeasureSelected(
      int index, UnitMeasure? unitMeasureSelected) = _$UnitMeasureSelected;

  int get index => throw _privateConstructorUsedError;
  UnitMeasure? get unitMeasureSelected => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitMeasureSelectedCopyWith<UnitMeasureSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuantityChangedCopyWith<$Res> {
  factory $QuantityChangedCopyWith(
          QuantityChanged value, $Res Function(QuantityChanged) then) =
      _$QuantityChangedCopyWithImpl<$Res>;
  $Res call({int index, String quantity});
}

/// @nodoc
class _$QuantityChangedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $QuantityChangedCopyWith<$Res> {
  _$QuantityChangedCopyWithImpl(
      QuantityChanged _value, $Res Function(QuantityChanged) _then)
      : super(_value, (v) => _then(v as QuantityChanged));

  @override
  QuantityChanged get _value => super._value as QuantityChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? quantity = freezed,
  }) {
    return _then(QuantityChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QuantityChanged implements QuantityChanged {
  const _$QuantityChanged(this.index, this.quantity);

  @override
  final int index;
  @override
  final String quantity;

  @override
  String toString() {
    return 'AddProductEvent.quantityChanged(index: $index, quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is QuantityChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(quantity);

  @JsonKey(ignore: true)
  @override
  $QuantityChangedCopyWith<QuantityChanged> get copyWith =>
      _$QuantityChangedCopyWithImpl<QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return quantityChanged(index, quantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(index, quantity);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
  }) {
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class QuantityChanged implements AddProductEvent {
  const factory QuantityChanged(int index, String quantity) = _$QuantityChanged;

  int get index => throw _privateConstructorUsedError;
  String get quantity => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuantityChangedCopyWith<QuantityChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ObservationChangedCopyWith<$Res> {
  factory $ObservationChangedCopyWith(
          ObservationChanged value, $Res Function(ObservationChanged) then) =
      _$ObservationChangedCopyWithImpl<$Res>;
  $Res call({int index, String observation});
}

/// @nodoc
class _$ObservationChangedCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $ObservationChangedCopyWith<$Res> {
  _$ObservationChangedCopyWithImpl(
      ObservationChanged _value, $Res Function(ObservationChanged) _then)
      : super(_value, (v) => _then(v as ObservationChanged));

  @override
  ObservationChanged get _value => super._value as ObservationChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? observation = freezed,
  }) {
    return _then(ObservationChanged(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ObservationChanged implements ObservationChanged {
  const _$ObservationChanged(this.index, this.observation);

  @override
  final int index;
  @override
  final String observation;

  @override
  String toString() {
    return 'AddProductEvent.observationChanged(index: $index, observation: $observation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ObservationChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.observation, observation) ||
                const DeepCollectionEquality()
                    .equals(other.observation, observation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(observation);

  @JsonKey(ignore: true)
  @override
  $ObservationChangedCopyWith<ObservationChanged> get copyWith =>
      _$ObservationChangedCopyWithImpl<ObservationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return observationChanged(index, observation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (observationChanged != null) {
      return observationChanged(index, observation);
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
  }) {
    return observationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (observationChanged != null) {
      return observationChanged(this);
    }
    return orElse();
  }
}

abstract class ObservationChanged implements AddProductEvent {
  const factory ObservationChanged(int index, String observation) =
      _$ObservationChanged;

  int get index => throw _privateConstructorUsedError;
  String get observation => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ObservationChangedCopyWith<ObservationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMoreTapCopyWith<$Res> {
  factory $AddMoreTapCopyWith(
          AddMoreTap value, $Res Function(AddMoreTap) then) =
      _$AddMoreTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddMoreTapCopyWithImpl<$Res> extends _$AddProductEventCopyWithImpl<$Res>
    implements $AddMoreTapCopyWith<$Res> {
  _$AddMoreTapCopyWithImpl(AddMoreTap _value, $Res Function(AddMoreTap) _then)
      : super(_value, (v) => _then(v as AddMoreTap));

  @override
  AddMoreTap get _value => super._value as AddMoreTap;
}

/// @nodoc

class _$AddMoreTap implements AddMoreTap {
  const _$AddMoreTap();

  @override
  String toString() {
    return 'AddProductEvent.addMoreTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddMoreTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return addMoreTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (addMoreTap != null) {
      return addMoreTap();
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
  }) {
    return addMoreTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (addMoreTap != null) {
      return addMoreTap(this);
    }
    return orElse();
  }
}

abstract class AddMoreTap implements AddProductEvent {
  const factory AddMoreTap() = _$AddMoreTap;
}

/// @nodoc
abstract class $BtnProceedTapCopyWith<$Res> {
  factory $BtnProceedTapCopyWith(
          BtnProceedTap value, $Res Function(BtnProceedTap) then) =
      _$BtnProceedTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$BtnProceedTapCopyWithImpl<$Res>
    extends _$AddProductEventCopyWithImpl<$Res>
    implements $BtnProceedTapCopyWith<$Res> {
  _$BtnProceedTapCopyWithImpl(
      BtnProceedTap _value, $Res Function(BtnProceedTap) _then)
      : super(_value, (v) => _then(v as BtnProceedTap));

  @override
  BtnProceedTap get _value => super._value as BtnProceedTap;
}

/// @nodoc

class _$BtnProceedTap implements BtnProceedTap {
  const _$BtnProceedTap();

  @override
  String toString() {
    return 'AddProductEvent.btnProceedTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BtnProceedTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index, Product? product) productSelected,
    required TResult Function(int index, String? kindSelected) kindSelected,
    required TResult Function(int index, String? ratingSelected) ratingSelected,
    required TResult Function(int index, UnitMeasure? unitMeasureSelected)
        unitMeasureSelected,
    required TResult Function(int index, String quantity) quantityChanged,
    required TResult Function(int index, String observation) observationChanged,
    required TResult Function() addMoreTap,
    required TResult Function() btnProceedTap,
  }) {
    return btnProceedTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index, Product? product)? productSelected,
    TResult Function(int index, String? kindSelected)? kindSelected,
    TResult Function(int index, String? ratingSelected)? ratingSelected,
    TResult Function(int index, UnitMeasure? unitMeasureSelected)?
        unitMeasureSelected,
    TResult Function(int index, String quantity)? quantityChanged,
    TResult Function(int index, String observation)? observationChanged,
    TResult Function()? addMoreTap,
    TResult Function()? btnProceedTap,
    required TResult orElse(),
  }) {
    if (btnProceedTap != null) {
      return btnProceedTap();
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
    required TResult Function(QuantityChanged value) quantityChanged,
    required TResult Function(ObservationChanged value) observationChanged,
    required TResult Function(AddMoreTap value) addMoreTap,
    required TResult Function(BtnProceedTap value) btnProceedTap,
  }) {
    return btnProceedTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(KindSelected value)? kindSelected,
    TResult Function(RatingSelected value)? ratingSelected,
    TResult Function(UnitMeasureSelected value)? unitMeasureSelected,
    TResult Function(QuantityChanged value)? quantityChanged,
    TResult Function(ObservationChanged value)? observationChanged,
    TResult Function(AddMoreTap value)? addMoreTap,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    required TResult orElse(),
  }) {
    if (btnProceedTap != null) {
      return btnProceedTap(this);
    }
    return orElse();
  }
}

abstract class BtnProceedTap implements AddProductEvent {
  const factory BtnProceedTap() = _$BtnProceedTap;
}

/// @nodoc
class _$AddProductStateTearOff {
  const _$AddProductStateTearOff();

  _AddProductState call(
      {required NewAdvertisement newAdvertisement,
      required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required bool showErrors,
      required bool showBtnProceed,
      required bool proceed}) {
    return _AddProductState(
      newAdvertisement: newAdvertisement,
      isLoading: isLoading,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess,
      showErrors: showErrors,
      showBtnProceed: showBtnProceed,
      proceed: proceed,
    );
  }
}

/// @nodoc
const $AddProductState = _$AddProductStateTearOff();

/// @nodoc
mixin _$AddProductState {
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, List<Product>>>
      get optionProductsFailureOrSuccess => throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  bool get showBtnProceed => throw _privateConstructorUsedError;
  bool get proceed => throw _privateConstructorUsedError;

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
      {NewAdvertisement newAdvertisement,
      bool isLoading,
      Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      bool showErrors,
      bool showBtnProceed,
      bool proceed});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
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
    Object? newAdvertisement = freezed,
    Object? isLoading = freezed,
    Object? optionProductsFailureOrSuccess = freezed,
    Object? showErrors = freezed,
    Object? showBtnProceed = freezed,
    Object? proceed = freezed,
  }) {
    return _then(_value.copyWith(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess == freezed
          ? _value.optionProductsFailureOrSuccess
          : optionProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      showBtnProceed: showBtnProceed == freezed
          ? _value.showBtnProceed
          : showBtnProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      proceed: proceed == freezed
          ? _value.proceed
          : proceed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement {
    return $NewAdvertisementCopyWith<$Res>(_value.newAdvertisement, (value) {
      return _then(_value.copyWith(newAdvertisement: value));
    });
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
      {NewAdvertisement newAdvertisement,
      bool isLoading,
      Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      bool showErrors,
      bool showBtnProceed,
      bool proceed});

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
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
    Object? newAdvertisement = freezed,
    Object? isLoading = freezed,
    Object? optionProductsFailureOrSuccess = freezed,
    Object? showErrors = freezed,
    Object? showBtnProceed = freezed,
    Object? proceed = freezed,
  }) {
    return _then(_AddProductState(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionProductsFailureOrSuccess: optionProductsFailureOrSuccess == freezed
          ? _value.optionProductsFailureOrSuccess
          : optionProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, List<Product>>>,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      showBtnProceed: showBtnProceed == freezed
          ? _value.showBtnProceed
          : showBtnProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      proceed: proceed == freezed
          ? _value.proceed
          : proceed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddProductState implements _AddProductState {
  const _$_AddProductState(
      {required this.newAdvertisement,
      required this.isLoading,
      required this.optionProductsFailureOrSuccess,
      required this.showErrors,
      required this.showBtnProceed,
      required this.proceed});

  @override
  final NewAdvertisement newAdvertisement;
  @override
  final bool isLoading;
  @override
  final Option<Either<ProductFailure, List<Product>>>
      optionProductsFailureOrSuccess;
  @override
  final bool showErrors;
  @override
  final bool showBtnProceed;
  @override
  final bool proceed;

  @override
  String toString() {
    return 'AddProductState(newAdvertisement: $newAdvertisement, isLoading: $isLoading, optionProductsFailureOrSuccess: $optionProductsFailureOrSuccess, showErrors: $showErrors, showBtnProceed: $showBtnProceed, proceed: $proceed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddProductState &&
            (identical(other.newAdvertisement, newAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.newAdvertisement, newAdvertisement)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.optionProductsFailureOrSuccess,
                    optionProductsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionProductsFailureOrSuccess,
                    optionProductsFailureOrSuccess)) &&
            (identical(other.showErrors, showErrors) ||
                const DeepCollectionEquality()
                    .equals(other.showErrors, showErrors)) &&
            (identical(other.showBtnProceed, showBtnProceed) ||
                const DeepCollectionEquality()
                    .equals(other.showBtnProceed, showBtnProceed)) &&
            (identical(other.proceed, proceed) ||
                const DeepCollectionEquality().equals(other.proceed, proceed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newAdvertisement) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(optionProductsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(showErrors) ^
      const DeepCollectionEquality().hash(showBtnProceed) ^
      const DeepCollectionEquality().hash(proceed);

  @JsonKey(ignore: true)
  @override
  _$AddProductStateCopyWith<_AddProductState> get copyWith =>
      __$AddProductStateCopyWithImpl<_AddProductState>(this, _$identity);
}

abstract class _AddProductState implements AddProductState {
  const factory _AddProductState(
      {required NewAdvertisement newAdvertisement,
      required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required bool showErrors,
      required bool showBtnProceed,
      required bool proceed}) = _$_AddProductState;

  @override
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, List<Product>>>
      get optionProductsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  bool get showErrors => throw _privateConstructorUsedError;
  @override
  bool get showBtnProceed => throw _privateConstructorUsedError;
  @override
  bool get proceed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddProductStateCopyWith<_AddProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
