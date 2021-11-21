// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_result_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchResultEventTearOff {
  const _$SearchResultEventTearOff();

  _Started started(AdProduct product) {
    return _Started(
      product,
    );
  }
}

/// @nodoc
const $SearchResultEvent = _$SearchResultEventTearOff();

/// @nodoc
mixin _$SearchResultEvent {
  AdProduct get product => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultEventCopyWith<SearchResultEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultEventCopyWith<$Res> {
  factory $SearchResultEventCopyWith(
          SearchResultEvent value, $Res Function(SearchResultEvent) then) =
      _$SearchResultEventCopyWithImpl<$Res>;
  $Res call({AdProduct product});

  $AdProductCopyWith<$Res> get product;
}

/// @nodoc
class _$SearchResultEventCopyWithImpl<$Res>
    implements $SearchResultEventCopyWith<$Res> {
  _$SearchResultEventCopyWithImpl(this._value, this._then);

  final SearchResultEvent _value;
  // ignore: unused_field
  final $Res Function(SearchResultEvent) _then;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }

  @override
  $AdProductCopyWith<$Res> get product {
    return $AdProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $SearchResultEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({AdProduct product});

  @override
  $AdProductCopyWith<$Res> get product;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SearchResultEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_Started(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.product);

  @override
  final AdProduct product;

  @override
  String toString() {
    return 'SearchResultEvent.started(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AdProduct product) started,
  }) {
    return started(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AdProduct product)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchResultEvent {
  const factory _Started(AdProduct product) = _$_Started;

  @override
  AdProduct get product => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchResultStateTearOff {
  const _$SearchResultStateTearOff();

  _SearchResultState call({required Advertisement? advertisement}) {
    return _SearchResultState(
      advertisement: advertisement,
    );
  }
}

/// @nodoc
const $SearchResultState = _$SearchResultStateTearOff();

/// @nodoc
mixin _$SearchResultState {
  Advertisement? get advertisement => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchResultStateCopyWith<SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultStateCopyWith<$Res> {
  factory $SearchResultStateCopyWith(
          SearchResultState value, $Res Function(SearchResultState) then) =
      _$SearchResultStateCopyWithImpl<$Res>;
  $Res call({Advertisement? advertisement});

  $AdvertisementCopyWith<$Res>? get advertisement;
}

/// @nodoc
class _$SearchResultStateCopyWithImpl<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  _$SearchResultStateCopyWithImpl(this._value, this._then);

  final SearchResultState _value;
  // ignore: unused_field
  final $Res Function(SearchResultState) _then;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(_value.copyWith(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res>? get advertisement {
    if (_value.advertisement == null) {
      return null;
    }

    return $AdvertisementCopyWith<$Res>(_value.advertisement!, (value) {
      return _then(_value.copyWith(advertisement: value));
    });
  }
}

/// @nodoc
abstract class _$SearchResultStateCopyWith<$Res>
    implements $SearchResultStateCopyWith<$Res> {
  factory _$SearchResultStateCopyWith(
          _SearchResultState value, $Res Function(_SearchResultState) then) =
      __$SearchResultStateCopyWithImpl<$Res>;
  @override
  $Res call({Advertisement? advertisement});

  @override
  $AdvertisementCopyWith<$Res>? get advertisement;
}

/// @nodoc
class __$SearchResultStateCopyWithImpl<$Res>
    extends _$SearchResultStateCopyWithImpl<$Res>
    implements _$SearchResultStateCopyWith<$Res> {
  __$SearchResultStateCopyWithImpl(
      _SearchResultState _value, $Res Function(_SearchResultState) _then)
      : super(_value, (v) => _then(v as _SearchResultState));

  @override
  _SearchResultState get _value => super._value as _SearchResultState;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(_SearchResultState(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
    ));
  }
}

/// @nodoc

class _$_SearchResultState implements _SearchResultState {
  const _$_SearchResultState({required this.advertisement});

  @override
  final Advertisement? advertisement;

  @override
  String toString() {
    return 'SearchResultState(advertisement: $advertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultState &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(advertisement);

  @JsonKey(ignore: true)
  @override
  _$SearchResultStateCopyWith<_SearchResultState> get copyWith =>
      __$SearchResultStateCopyWithImpl<_SearchResultState>(this, _$identity);
}

abstract class _SearchResultState implements SearchResultState {
  const factory _SearchResultState({required Advertisement? advertisement}) =
      _$_SearchResultState;

  @override
  Advertisement? get advertisement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchResultStateCopyWith<_SearchResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
