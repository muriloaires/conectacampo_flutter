// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchFormEventTearOff {
  const _$SearchFormEventTearOff();

  _Started started() {
    return const _Started();
  }

  ProductSelected productSelected() {
    return const ProductSelected();
  }
}

/// @nodoc
const $SearchFormEvent = _$SearchFormEventTearOff();

/// @nodoc
mixin _$SearchFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormEventCopyWith<$Res> {
  factory $SearchFormEventCopyWith(
          SearchFormEvent value, $Res Function(SearchFormEvent) then) =
      _$SearchFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchFormEventCopyWithImpl<$Res>
    implements $SearchFormEventCopyWith<$Res> {
  _$SearchFormEventCopyWithImpl(this._value, this._then);

  final SearchFormEvent _value;
  // ignore: unused_field
  final $Res Function(SearchFormEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SearchFormEventCopyWithImpl<$Res>
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
    return 'SearchFormEvent.started()';
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
    required TResult Function() productSelected,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
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
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $ProductSelectedCopyWith<$Res> {
  factory $ProductSelectedCopyWith(
          ProductSelected value, $Res Function(ProductSelected) then) =
      _$ProductSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductSelectedCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $ProductSelectedCopyWith<$Res> {
  _$ProductSelectedCopyWithImpl(
      ProductSelected _value, $Res Function(ProductSelected) _then)
      : super(_value, (v) => _then(v as ProductSelected));

  @override
  ProductSelected get _value => super._value as ProductSelected;
}

/// @nodoc

class _$ProductSelected implements ProductSelected {
  const _$ProductSelected();

  @override
  String toString() {
    return 'SearchFormEvent.productSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
  }) {
    return productSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
  }) {
    return productSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    required TResult orElse(),
  }) {
    if (productSelected != null) {
      return productSelected(this);
    }
    return orElse();
  }
}

abstract class ProductSelected implements SearchFormEvent {
  const factory ProductSelected() = _$ProductSelected;
}

/// @nodoc
class _$SearchFormStateTearOff {
  const _$SearchFormStateTearOff();

  _SearchFormState call({required bool productSelected}) {
    return _SearchFormState(
      productSelected: productSelected,
    );
  }
}

/// @nodoc
const $SearchFormState = _$SearchFormStateTearOff();

/// @nodoc
mixin _$SearchFormState {
  bool get productSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFormStateCopyWith<SearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormStateCopyWith<$Res> {
  factory $SearchFormStateCopyWith(
          SearchFormState value, $Res Function(SearchFormState) then) =
      _$SearchFormStateCopyWithImpl<$Res>;
  $Res call({bool productSelected});
}

/// @nodoc
class _$SearchFormStateCopyWithImpl<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  _$SearchFormStateCopyWithImpl(this._value, this._then);

  final SearchFormState _value;
  // ignore: unused_field
  final $Res Function(SearchFormState) _then;

  @override
  $Res call({
    Object? productSelected = freezed,
  }) {
    return _then(_value.copyWith(
      productSelected: productSelected == freezed
          ? _value.productSelected
          : productSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SearchFormStateCopyWith<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  factory _$SearchFormStateCopyWith(
          _SearchFormState value, $Res Function(_SearchFormState) then) =
      __$SearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call({bool productSelected});
}

/// @nodoc
class __$SearchFormStateCopyWithImpl<$Res>
    extends _$SearchFormStateCopyWithImpl<$Res>
    implements _$SearchFormStateCopyWith<$Res> {
  __$SearchFormStateCopyWithImpl(
      _SearchFormState _value, $Res Function(_SearchFormState) _then)
      : super(_value, (v) => _then(v as _SearchFormState));

  @override
  _SearchFormState get _value => super._value as _SearchFormState;

  @override
  $Res call({
    Object? productSelected = freezed,
  }) {
    return _then(_SearchFormState(
      productSelected: productSelected == freezed
          ? _value.productSelected
          : productSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SearchFormState implements _SearchFormState {
  const _$_SearchFormState({required this.productSelected});

  @override
  final bool productSelected;

  @override
  String toString() {
    return 'SearchFormState(productSelected: $productSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFormState &&
            (identical(other.productSelected, productSelected) ||
                const DeepCollectionEquality()
                    .equals(other.productSelected, productSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productSelected);

  @JsonKey(ignore: true)
  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      __$SearchFormStateCopyWithImpl<_SearchFormState>(this, _$identity);
}

abstract class _SearchFormState implements SearchFormState {
  const factory _SearchFormState({required bool productSelected}) =
      _$_SearchFormState;

  @override
  bool get productSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
