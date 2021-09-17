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

  SearchTapped searchTapped(String query) {
    return SearchTapped(
      query,
    );
  }

  HistorySelected historySelected(String query) {
    return HistorySelected(
      query,
    );
  }

  OnRadioKindTap onRadioKindTap(int index) {
    return OnRadioKindTap(
      index,
    );
  }

  OnRadioRatingTap onRadioRatingTap(int index) {
    return OnRadioRatingTap(
      index,
    );
  }

  OnTapKindFilter onTapKindFilter() {
    return const OnTapKindFilter();
  }

  OnTapRatingFilter onTapRatingFilter() {
    return const OnTapRatingFilter();
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
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
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
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
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
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
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
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return productSelected();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
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
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return productSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
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
abstract class $SearchTappedCopyWith<$Res> {
  factory $SearchTappedCopyWith(
          SearchTapped value, $Res Function(SearchTapped) then) =
      _$SearchTappedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchTappedCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $SearchTappedCopyWith<$Res> {
  _$SearchTappedCopyWithImpl(
      SearchTapped _value, $Res Function(SearchTapped) _then)
      : super(_value, (v) => _then(v as SearchTapped));

  @override
  SearchTapped get _value => super._value as SearchTapped;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(SearchTapped(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchTapped implements SearchTapped {
  const _$SearchTapped(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchFormEvent.searchTapped(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchTapped &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $SearchTappedCopyWith<SearchTapped> get copyWith =>
      _$SearchTappedCopyWithImpl<SearchTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return searchTapped(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return searchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (searchTapped != null) {
      return searchTapped(this);
    }
    return orElse();
  }
}

abstract class SearchTapped implements SearchFormEvent {
  const factory SearchTapped(String query) = _$SearchTapped;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchTappedCopyWith<SearchTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistorySelectedCopyWith<$Res> {
  factory $HistorySelectedCopyWith(
          HistorySelected value, $Res Function(HistorySelected) then) =
      _$HistorySelectedCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$HistorySelectedCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $HistorySelectedCopyWith<$Res> {
  _$HistorySelectedCopyWithImpl(
      HistorySelected _value, $Res Function(HistorySelected) _then)
      : super(_value, (v) => _then(v as HistorySelected));

  @override
  HistorySelected get _value => super._value as HistorySelected;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(HistorySelected(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HistorySelected implements HistorySelected {
  const _$HistorySelected(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchFormEvent.historySelected(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HistorySelected &&
            (identical(other.query, query) ||
                const DeepCollectionEquality().equals(other.query, query)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(query);

  @JsonKey(ignore: true)
  @override
  $HistorySelectedCopyWith<HistorySelected> get copyWith =>
      _$HistorySelectedCopyWithImpl<HistorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return historySelected(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (historySelected != null) {
      return historySelected(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return historySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (historySelected != null) {
      return historySelected(this);
    }
    return orElse();
  }
}

abstract class HistorySelected implements SearchFormEvent {
  const factory HistorySelected(String query) = _$HistorySelected;

  String get query => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HistorySelectedCopyWith<HistorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRadioKindTapCopyWith<$Res> {
  factory $OnRadioKindTapCopyWith(
          OnRadioKindTap value, $Res Function(OnRadioKindTap) then) =
      _$OnRadioKindTapCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnRadioKindTapCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $OnRadioKindTapCopyWith<$Res> {
  _$OnRadioKindTapCopyWithImpl(
      OnRadioKindTap _value, $Res Function(OnRadioKindTap) _then)
      : super(_value, (v) => _then(v as OnRadioKindTap));

  @override
  OnRadioKindTap get _value => super._value as OnRadioKindTap;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnRadioKindTap(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnRadioKindTap implements OnRadioKindTap {
  const _$OnRadioKindTap(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SearchFormEvent.onRadioKindTap(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnRadioKindTap &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $OnRadioKindTapCopyWith<OnRadioKindTap> get copyWith =>
      _$OnRadioKindTapCopyWithImpl<OnRadioKindTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return onRadioKindTap(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onRadioKindTap != null) {
      return onRadioKindTap(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return onRadioKindTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onRadioKindTap != null) {
      return onRadioKindTap(this);
    }
    return orElse();
  }
}

abstract class OnRadioKindTap implements SearchFormEvent {
  const factory OnRadioKindTap(int index) = _$OnRadioKindTap;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRadioKindTapCopyWith<OnRadioKindTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnRadioRatingTapCopyWith<$Res> {
  factory $OnRadioRatingTapCopyWith(
          OnRadioRatingTap value, $Res Function(OnRadioRatingTap) then) =
      _$OnRadioRatingTapCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$OnRadioRatingTapCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $OnRadioRatingTapCopyWith<$Res> {
  _$OnRadioRatingTapCopyWithImpl(
      OnRadioRatingTap _value, $Res Function(OnRadioRatingTap) _then)
      : super(_value, (v) => _then(v as OnRadioRatingTap));

  @override
  OnRadioRatingTap get _value => super._value as OnRadioRatingTap;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(OnRadioRatingTap(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OnRadioRatingTap implements OnRadioRatingTap {
  const _$OnRadioRatingTap(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'SearchFormEvent.onRadioRatingTap(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnRadioRatingTap &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $OnRadioRatingTapCopyWith<OnRadioRatingTap> get copyWith =>
      _$OnRadioRatingTapCopyWithImpl<OnRadioRatingTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return onRadioRatingTap(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onRadioRatingTap != null) {
      return onRadioRatingTap(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return onRadioRatingTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onRadioRatingTap != null) {
      return onRadioRatingTap(this);
    }
    return orElse();
  }
}

abstract class OnRadioRatingTap implements SearchFormEvent {
  const factory OnRadioRatingTap(int index) = _$OnRadioRatingTap;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnRadioRatingTapCopyWith<OnRadioRatingTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnTapKindFilterCopyWith<$Res> {
  factory $OnTapKindFilterCopyWith(
          OnTapKindFilter value, $Res Function(OnTapKindFilter) then) =
      _$OnTapKindFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnTapKindFilterCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $OnTapKindFilterCopyWith<$Res> {
  _$OnTapKindFilterCopyWithImpl(
      OnTapKindFilter _value, $Res Function(OnTapKindFilter) _then)
      : super(_value, (v) => _then(v as OnTapKindFilter));

  @override
  OnTapKindFilter get _value => super._value as OnTapKindFilter;
}

/// @nodoc

class _$OnTapKindFilter implements OnTapKindFilter {
  const _$OnTapKindFilter();

  @override
  String toString() {
    return 'SearchFormEvent.onTapKindFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnTapKindFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return onTapKindFilter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onTapKindFilter != null) {
      return onTapKindFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return onTapKindFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onTapKindFilter != null) {
      return onTapKindFilter(this);
    }
    return orElse();
  }
}

abstract class OnTapKindFilter implements SearchFormEvent {
  const factory OnTapKindFilter() = _$OnTapKindFilter;
}

/// @nodoc
abstract class $OnTapRatingFilterCopyWith<$Res> {
  factory $OnTapRatingFilterCopyWith(
          OnTapRatingFilter value, $Res Function(OnTapRatingFilter) then) =
      _$OnTapRatingFilterCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnTapRatingFilterCopyWithImpl<$Res>
    extends _$SearchFormEventCopyWithImpl<$Res>
    implements $OnTapRatingFilterCopyWith<$Res> {
  _$OnTapRatingFilterCopyWithImpl(
      OnTapRatingFilter _value, $Res Function(OnTapRatingFilter) _then)
      : super(_value, (v) => _then(v as OnTapRatingFilter));

  @override
  OnTapRatingFilter get _value => super._value as OnTapRatingFilter;
}

/// @nodoc

class _$OnTapRatingFilter implements OnTapRatingFilter {
  const _$OnTapRatingFilter();

  @override
  String toString() {
    return 'SearchFormEvent.onTapRatingFilter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnTapRatingFilter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() productSelected,
    required TResult Function(String query) searchTapped,
    required TResult Function(String query) historySelected,
    required TResult Function(int index) onRadioKindTap,
    required TResult Function(int index) onRadioRatingTap,
    required TResult Function() onTapKindFilter,
    required TResult Function() onTapRatingFilter,
  }) {
    return onTapRatingFilter();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    TResult Function(int index)? onRadioKindTap,
    TResult Function(int index)? onRadioRatingTap,
    TResult Function()? onTapKindFilter,
    TResult Function()? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onTapRatingFilter != null) {
      return onTapRatingFilter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
    required TResult Function(OnRadioKindTap value) onRadioKindTap,
    required TResult Function(OnRadioRatingTap value) onRadioRatingTap,
    required TResult Function(OnTapKindFilter value) onTapKindFilter,
    required TResult Function(OnTapRatingFilter value) onTapRatingFilter,
  }) {
    return onTapRatingFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
    TResult Function(OnRadioKindTap value)? onRadioKindTap,
    TResult Function(OnRadioRatingTap value)? onRadioRatingTap,
    TResult Function(OnTapKindFilter value)? onTapKindFilter,
    TResult Function(OnTapRatingFilter value)? onTapRatingFilter,
    required TResult orElse(),
  }) {
    if (onTapRatingFilter != null) {
      return onTapRatingFilter(this);
    }
    return orElse();
  }
}

abstract class OnTapRatingFilter implements SearchFormEvent {
  const factory OnTapRatingFilter() = _$OnTapRatingFilter;
}

/// @nodoc
class _$SearchFormStateTearOff {
  const _$SearchFormStateTearOff();

  _SearchFormState call(
      {required bool productSelected,
      required bool searching,
      required Option<Either<AdvertisementFailure, List<AdProduct>>>
          optionOfAdsProductsFailureOrSuccess,
      required bool showFilters,
      required Place? place,
      required bool showHistory,
      required List<String> history,
      required int kindRadioValue,
      required bool isKindsVisible,
      required int ratingRadioValue,
      required bool isRatingVisible,
      required Option<Either<ProductFailure, Product>>
          optionOfProductFailureOrSuccess}) {
    return _SearchFormState(
      productSelected: productSelected,
      searching: searching,
      optionOfAdsProductsFailureOrSuccess: optionOfAdsProductsFailureOrSuccess,
      showFilters: showFilters,
      place: place,
      showHistory: showHistory,
      history: history,
      kindRadioValue: kindRadioValue,
      isKindsVisible: isKindsVisible,
      ratingRadioValue: ratingRadioValue,
      isRatingVisible: isRatingVisible,
      optionOfProductFailureOrSuccess: optionOfProductFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SearchFormState = _$SearchFormStateTearOff();

/// @nodoc
mixin _$SearchFormState {
  bool get productSelected => throw _privateConstructorUsedError;
  bool get searching => throw _privateConstructorUsedError;
  Option<Either<AdvertisementFailure, List<AdProduct>>>
      get optionOfAdsProductsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  bool get showFilters => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  bool get showHistory => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;
  int get kindRadioValue => throw _privateConstructorUsedError;
  bool get isKindsVisible => throw _privateConstructorUsedError;
  int get ratingRadioValue => throw _privateConstructorUsedError;
  bool get isRatingVisible => throw _privateConstructorUsedError;
  Option<Either<ProductFailure, Product>> get optionOfProductFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFormStateCopyWith<SearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFormStateCopyWith<$Res> {
  factory $SearchFormStateCopyWith(
          SearchFormState value, $Res Function(SearchFormState) then) =
      _$SearchFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool productSelected,
      bool searching,
      Option<Either<AdvertisementFailure, List<AdProduct>>>
          optionOfAdsProductsFailureOrSuccess,
      bool showFilters,
      Place? place,
      bool showHistory,
      List<String> history,
      int kindRadioValue,
      bool isKindsVisible,
      int ratingRadioValue,
      bool isRatingVisible,
      Option<Either<ProductFailure, Product>> optionOfProductFailureOrSuccess});

  $PlaceCopyWith<$Res>? get place;
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
    Object? searching = freezed,
    Object? optionOfAdsProductsFailureOrSuccess = freezed,
    Object? showFilters = freezed,
    Object? place = freezed,
    Object? showHistory = freezed,
    Object? history = freezed,
    Object? kindRadioValue = freezed,
    Object? isKindsVisible = freezed,
    Object? ratingRadioValue = freezed,
    Object? isRatingVisible = freezed,
    Object? optionOfProductFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      productSelected: productSelected == freezed
          ? _value.productSelected
          : productSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfAdsProductsFailureOrSuccess: optionOfAdsProductsFailureOrSuccess ==
              freezed
          ? _value.optionOfAdsProductsFailureOrSuccess
          : optionOfAdsProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<AdProduct>>>,
      showFilters: showFilters == freezed
          ? _value.showFilters
          : showFilters // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      showHistory: showHistory == freezed
          ? _value.showHistory
          : showHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kindRadioValue: kindRadioValue == freezed
          ? _value.kindRadioValue
          : kindRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
      isKindsVisible: isKindsVisible == freezed
          ? _value.isKindsVisible
          : isKindsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      ratingRadioValue: ratingRadioValue == freezed
          ? _value.ratingRadioValue
          : ratingRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
      isRatingVisible: isRatingVisible == freezed
          ? _value.isRatingVisible
          : isRatingVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfProductFailureOrSuccess: optionOfProductFailureOrSuccess ==
              freezed
          ? _value.optionOfProductFailureOrSuccess
          : optionOfProductFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Product>>,
    ));
  }

  @override
  $PlaceCopyWith<$Res>? get place {
    if (_value.place == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.place!, (value) {
      return _then(_value.copyWith(place: value));
    });
  }
}

/// @nodoc
abstract class _$SearchFormStateCopyWith<$Res>
    implements $SearchFormStateCopyWith<$Res> {
  factory _$SearchFormStateCopyWith(
          _SearchFormState value, $Res Function(_SearchFormState) then) =
      __$SearchFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool productSelected,
      bool searching,
      Option<Either<AdvertisementFailure, List<AdProduct>>>
          optionOfAdsProductsFailureOrSuccess,
      bool showFilters,
      Place? place,
      bool showHistory,
      List<String> history,
      int kindRadioValue,
      bool isKindsVisible,
      int ratingRadioValue,
      bool isRatingVisible,
      Option<Either<ProductFailure, Product>> optionOfProductFailureOrSuccess});

  @override
  $PlaceCopyWith<$Res>? get place;
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
    Object? searching = freezed,
    Object? optionOfAdsProductsFailureOrSuccess = freezed,
    Object? showFilters = freezed,
    Object? place = freezed,
    Object? showHistory = freezed,
    Object? history = freezed,
    Object? kindRadioValue = freezed,
    Object? isKindsVisible = freezed,
    Object? ratingRadioValue = freezed,
    Object? isRatingVisible = freezed,
    Object? optionOfProductFailureOrSuccess = freezed,
  }) {
    return _then(_SearchFormState(
      productSelected: productSelected == freezed
          ? _value.productSelected
          : productSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      searching: searching == freezed
          ? _value.searching
          : searching // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfAdsProductsFailureOrSuccess: optionOfAdsProductsFailureOrSuccess ==
              freezed
          ? _value.optionOfAdsProductsFailureOrSuccess
          : optionOfAdsProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<AdProduct>>>,
      showFilters: showFilters == freezed
          ? _value.showFilters
          : showFilters // ignore: cast_nullable_to_non_nullable
              as bool,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place?,
      showHistory: showHistory == freezed
          ? _value.showHistory
          : showHistory // ignore: cast_nullable_to_non_nullable
              as bool,
      history: history == freezed
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<String>,
      kindRadioValue: kindRadioValue == freezed
          ? _value.kindRadioValue
          : kindRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
      isKindsVisible: isKindsVisible == freezed
          ? _value.isKindsVisible
          : isKindsVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      ratingRadioValue: ratingRadioValue == freezed
          ? _value.ratingRadioValue
          : ratingRadioValue // ignore: cast_nullable_to_non_nullable
              as int,
      isRatingVisible: isRatingVisible == freezed
          ? _value.isRatingVisible
          : isRatingVisible // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfProductFailureOrSuccess: optionOfProductFailureOrSuccess ==
              freezed
          ? _value.optionOfProductFailureOrSuccess
          : optionOfProductFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ProductFailure, Product>>,
    ));
  }
}

/// @nodoc

class _$_SearchFormState implements _SearchFormState {
  const _$_SearchFormState(
      {required this.productSelected,
      required this.searching,
      required this.optionOfAdsProductsFailureOrSuccess,
      required this.showFilters,
      required this.place,
      required this.showHistory,
      required this.history,
      required this.kindRadioValue,
      required this.isKindsVisible,
      required this.ratingRadioValue,
      required this.isRatingVisible,
      required this.optionOfProductFailureOrSuccess});

  @override
  final bool productSelected;
  @override
  final bool searching;
  @override
  final Option<Either<AdvertisementFailure, List<AdProduct>>>
      optionOfAdsProductsFailureOrSuccess;
  @override
  final bool showFilters;
  @override
  final Place? place;
  @override
  final bool showHistory;
  @override
  final List<String> history;
  @override
  final int kindRadioValue;
  @override
  final bool isKindsVisible;
  @override
  final int ratingRadioValue;
  @override
  final bool isRatingVisible;
  @override
  final Option<Either<ProductFailure, Product>> optionOfProductFailureOrSuccess;

  @override
  String toString() {
    return 'SearchFormState(productSelected: $productSelected, searching: $searching, optionOfAdsProductsFailureOrSuccess: $optionOfAdsProductsFailureOrSuccess, showFilters: $showFilters, place: $place, showHistory: $showHistory, history: $history, kindRadioValue: $kindRadioValue, isKindsVisible: $isKindsVisible, ratingRadioValue: $ratingRadioValue, isRatingVisible: $isRatingVisible, optionOfProductFailureOrSuccess: $optionOfProductFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchFormState &&
            (identical(other.productSelected, productSelected) ||
                const DeepCollectionEquality()
                    .equals(other.productSelected, productSelected)) &&
            (identical(other.searching, searching) ||
                const DeepCollectionEquality()
                    .equals(other.searching, searching)) &&
            (identical(other.optionOfAdsProductsFailureOrSuccess,
                    optionOfAdsProductsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfAdsProductsFailureOrSuccess,
                    optionOfAdsProductsFailureOrSuccess)) &&
            (identical(other.showFilters, showFilters) ||
                const DeepCollectionEquality()
                    .equals(other.showFilters, showFilters)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.showHistory, showHistory) ||
                const DeepCollectionEquality()
                    .equals(other.showHistory, showHistory)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality()
                    .equals(other.history, history)) &&
            (identical(other.kindRadioValue, kindRadioValue) ||
                const DeepCollectionEquality()
                    .equals(other.kindRadioValue, kindRadioValue)) &&
            (identical(other.isKindsVisible, isKindsVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isKindsVisible, isKindsVisible)) &&
            (identical(other.ratingRadioValue, ratingRadioValue) ||
                const DeepCollectionEquality()
                    .equals(other.ratingRadioValue, ratingRadioValue)) &&
            (identical(other.isRatingVisible, isRatingVisible) ||
                const DeepCollectionEquality()
                    .equals(other.isRatingVisible, isRatingVisible)) &&
            (identical(other.optionOfProductFailureOrSuccess,
                    optionOfProductFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfProductFailureOrSuccess,
                    optionOfProductFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productSelected) ^
      const DeepCollectionEquality().hash(searching) ^
      const DeepCollectionEquality().hash(optionOfAdsProductsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(showFilters) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(showHistory) ^
      const DeepCollectionEquality().hash(history) ^
      const DeepCollectionEquality().hash(kindRadioValue) ^
      const DeepCollectionEquality().hash(isKindsVisible) ^
      const DeepCollectionEquality().hash(ratingRadioValue) ^
      const DeepCollectionEquality().hash(isRatingVisible) ^
      const DeepCollectionEquality().hash(optionOfProductFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      __$SearchFormStateCopyWithImpl<_SearchFormState>(this, _$identity);
}

abstract class _SearchFormState implements SearchFormState {
  const factory _SearchFormState(
      {required bool productSelected,
      required bool searching,
      required Option<Either<AdvertisementFailure, List<AdProduct>>>
          optionOfAdsProductsFailureOrSuccess,
      required bool showFilters,
      required Place? place,
      required bool showHistory,
      required List<String> history,
      required int kindRadioValue,
      required bool isKindsVisible,
      required int ratingRadioValue,
      required bool isRatingVisible,
      required Option<Either<ProductFailure, Product>>
          optionOfProductFailureOrSuccess}) = _$_SearchFormState;

  @override
  bool get productSelected => throw _privateConstructorUsedError;
  @override
  bool get searching => throw _privateConstructorUsedError;
  @override
  Option<Either<AdvertisementFailure, List<AdProduct>>>
      get optionOfAdsProductsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  bool get showFilters => throw _privateConstructorUsedError;
  @override
  Place? get place => throw _privateConstructorUsedError;
  @override
  bool get showHistory => throw _privateConstructorUsedError;
  @override
  List<String> get history => throw _privateConstructorUsedError;
  @override
  int get kindRadioValue => throw _privateConstructorUsedError;
  @override
  bool get isKindsVisible => throw _privateConstructorUsedError;
  @override
  int get ratingRadioValue => throw _privateConstructorUsedError;
  @override
  bool get isRatingVisible => throw _privateConstructorUsedError;
  @override
  Option<Either<ProductFailure, Product>> get optionOfProductFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
