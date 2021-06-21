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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? productSelected,
    TResult Function(String query)? searchTapped,
    TResult Function(String query)? historySelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ProductSelected value) productSelected,
    required TResult Function(SearchTapped value) searchTapped,
    required TResult Function(HistorySelected value) historySelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ProductSelected value)? productSelected,
    TResult Function(SearchTapped value)? searchTapped,
    TResult Function(HistorySelected value)? historySelected,
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
class _$SearchFormStateTearOff {
  const _$SearchFormStateTearOff();

  _SearchFormState call(
      {required bool productSelected,
      required bool searching,
      required Either<AdvertisementFailure, List<Product>>
          adsProductsFailureOrSuccess,
      required bool showFilters,
      required Place? place,
      required bool showHistory,
      required List<String> history}) {
    return _SearchFormState(
      productSelected: productSelected,
      searching: searching,
      adsProductsFailureOrSuccess: adsProductsFailureOrSuccess,
      showFilters: showFilters,
      place: place,
      showHistory: showHistory,
      history: history,
    );
  }
}

/// @nodoc
const $SearchFormState = _$SearchFormStateTearOff();

/// @nodoc
mixin _$SearchFormState {
  bool get productSelected => throw _privateConstructorUsedError;
  bool get searching => throw _privateConstructorUsedError;
  Either<AdvertisementFailure, List<Product>> get adsProductsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  bool get showFilters => throw _privateConstructorUsedError;
  Place? get place => throw _privateConstructorUsedError;
  bool get showHistory => throw _privateConstructorUsedError;
  List<String> get history => throw _privateConstructorUsedError;

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
      Either<AdvertisementFailure, List<Product>> adsProductsFailureOrSuccess,
      bool showFilters,
      Place? place,
      bool showHistory,
      List<String> history});

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
    Object? adsProductsFailureOrSuccess = freezed,
    Object? showFilters = freezed,
    Object? place = freezed,
    Object? showHistory = freezed,
    Object? history = freezed,
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
      adsProductsFailureOrSuccess: adsProductsFailureOrSuccess == freezed
          ? _value.adsProductsFailureOrSuccess
          : adsProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Product>>,
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
      Either<AdvertisementFailure, List<Product>> adsProductsFailureOrSuccess,
      bool showFilters,
      Place? place,
      bool showHistory,
      List<String> history});

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
    Object? adsProductsFailureOrSuccess = freezed,
    Object? showFilters = freezed,
    Object? place = freezed,
    Object? showHistory = freezed,
    Object? history = freezed,
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
      adsProductsFailureOrSuccess: adsProductsFailureOrSuccess == freezed
          ? _value.adsProductsFailureOrSuccess
          : adsProductsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Product>>,
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
    ));
  }
}

/// @nodoc

class _$_SearchFormState implements _SearchFormState {
  const _$_SearchFormState(
      {required this.productSelected,
      required this.searching,
      required this.adsProductsFailureOrSuccess,
      required this.showFilters,
      required this.place,
      required this.showHistory,
      required this.history});

  @override
  final bool productSelected;
  @override
  final bool searching;
  @override
  final Either<AdvertisementFailure, List<Product>> adsProductsFailureOrSuccess;
  @override
  final bool showFilters;
  @override
  final Place? place;
  @override
  final bool showHistory;
  @override
  final List<String> history;

  @override
  String toString() {
    return 'SearchFormState(productSelected: $productSelected, searching: $searching, adsProductsFailureOrSuccess: $adsProductsFailureOrSuccess, showFilters: $showFilters, place: $place, showHistory: $showHistory, history: $history)';
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
            (identical(other.adsProductsFailureOrSuccess,
                    adsProductsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.adsProductsFailureOrSuccess,
                    adsProductsFailureOrSuccess)) &&
            (identical(other.showFilters, showFilters) ||
                const DeepCollectionEquality()
                    .equals(other.showFilters, showFilters)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.showHistory, showHistory) ||
                const DeepCollectionEquality()
                    .equals(other.showHistory, showHistory)) &&
            (identical(other.history, history) ||
                const DeepCollectionEquality().equals(other.history, history)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(productSelected) ^
      const DeepCollectionEquality().hash(searching) ^
      const DeepCollectionEquality().hash(adsProductsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(showFilters) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(showHistory) ^
      const DeepCollectionEquality().hash(history);

  @JsonKey(ignore: true)
  @override
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      __$SearchFormStateCopyWithImpl<_SearchFormState>(this, _$identity);
}

abstract class _SearchFormState implements SearchFormState {
  const factory _SearchFormState(
      {required bool productSelected,
      required bool searching,
      required Either<AdvertisementFailure, List<Product>>
          adsProductsFailureOrSuccess,
      required bool showFilters,
      required Place? place,
      required bool showHistory,
      required List<String> history}) = _$_SearchFormState;

  @override
  bool get productSelected => throw _privateConstructorUsedError;
  @override
  bool get searching => throw _privateConstructorUsedError;
  @override
  Either<AdvertisementFailure, List<Product>> get adsProductsFailureOrSuccess =>
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
  @JsonKey(ignore: true)
  _$SearchFormStateCopyWith<_SearchFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
