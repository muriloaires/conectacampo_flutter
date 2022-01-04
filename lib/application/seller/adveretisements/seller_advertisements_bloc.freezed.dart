// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seller_advertisements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SellerAdvertisementsEventTearOff {
  const _$SellerAdvertisementsEventTearOff();

  _Started started() {
    return const _Started();
  }

  SomeExpandedTap someExpandedTap(bool isExpanded) {
    return SomeExpandedTap(
      isExpanded,
    );
  }
}

/// @nodoc
const $SellerAdvertisementsEvent = _$SellerAdvertisementsEventTearOff();

/// @nodoc
mixin _$SellerAdvertisementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isExpanded) someExpandedTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isExpanded)? someExpandedTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SomeExpandedTap value) someExpandedTap,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SomeExpandedTap value)? someExpandedTap,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerAdvertisementsEventCopyWith<$Res> {
  factory $SellerAdvertisementsEventCopyWith(SellerAdvertisementsEvent value,
          $Res Function(SellerAdvertisementsEvent) then) =
      _$SellerAdvertisementsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SellerAdvertisementsEventCopyWithImpl<$Res>
    implements $SellerAdvertisementsEventCopyWith<$Res> {
  _$SellerAdvertisementsEventCopyWithImpl(this._value, this._then);

  final SellerAdvertisementsEvent _value;
  // ignore: unused_field
  final $Res Function(SellerAdvertisementsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SellerAdvertisementsEventCopyWithImpl<$Res>
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
    return 'SellerAdvertisementsEvent.started()';
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
    required TResult Function(bool isExpanded) someExpandedTap,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isExpanded)? someExpandedTap,
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
    required TResult Function(SomeExpandedTap value) someExpandedTap,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SomeExpandedTap value)? someExpandedTap,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SellerAdvertisementsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $SomeExpandedTapCopyWith<$Res> {
  factory $SomeExpandedTapCopyWith(
          SomeExpandedTap value, $Res Function(SomeExpandedTap) then) =
      _$SomeExpandedTapCopyWithImpl<$Res>;
  $Res call({bool isExpanded});
}

/// @nodoc
class _$SomeExpandedTapCopyWithImpl<$Res>
    extends _$SellerAdvertisementsEventCopyWithImpl<$Res>
    implements $SomeExpandedTapCopyWith<$Res> {
  _$SomeExpandedTapCopyWithImpl(
      SomeExpandedTap _value, $Res Function(SomeExpandedTap) _then)
      : super(_value, (v) => _then(v as SomeExpandedTap));

  @override
  SomeExpandedTap get _value => super._value as SomeExpandedTap;

  @override
  $Res call({
    Object? isExpanded = freezed,
  }) {
    return _then(SomeExpandedTap(
      isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SomeExpandedTap implements SomeExpandedTap {
  const _$SomeExpandedTap(this.isExpanded);

  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'SellerAdvertisementsEvent.someExpandedTap(isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SomeExpandedTap &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isExpanded);

  @JsonKey(ignore: true)
  @override
  $SomeExpandedTapCopyWith<SomeExpandedTap> get copyWith =>
      _$SomeExpandedTapCopyWithImpl<SomeExpandedTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(bool isExpanded) someExpandedTap,
  }) {
    return someExpandedTap(isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(bool isExpanded)? someExpandedTap,
    required TResult orElse(),
  }) {
    if (someExpandedTap != null) {
      return someExpandedTap(isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(SomeExpandedTap value) someExpandedTap,
  }) {
    return someExpandedTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(SomeExpandedTap value)? someExpandedTap,
    required TResult orElse(),
  }) {
    if (someExpandedTap != null) {
      return someExpandedTap(this);
    }
    return orElse();
  }
}

abstract class SomeExpandedTap implements SellerAdvertisementsEvent {
  const factory SomeExpandedTap(bool isExpanded) = _$SomeExpandedTap;

  bool get isExpanded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SomeExpandedTapCopyWith<SomeExpandedTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SellerAdvertisementsStateTearOff {
  const _$SellerAdvertisementsStateTearOff();

  _SellerAdvertisementsState call(
      {required Either<AdvertisementFailure, List<Advertisement>>?
          sellerAdsFailureOrSuccess,
      required bool loading,
      required bool someExpanded}) {
    return _SellerAdvertisementsState(
      sellerAdsFailureOrSuccess: sellerAdsFailureOrSuccess,
      loading: loading,
      someExpanded: someExpanded,
    );
  }
}

/// @nodoc
const $SellerAdvertisementsState = _$SellerAdvertisementsStateTearOff();

/// @nodoc
mixin _$SellerAdvertisementsState {
  Either<AdvertisementFailure, List<Advertisement>>?
      get sellerAdsFailureOrSuccess => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get someExpanded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerAdvertisementsStateCopyWith<SellerAdvertisementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerAdvertisementsStateCopyWith<$Res> {
  factory $SellerAdvertisementsStateCopyWith(SellerAdvertisementsState value,
          $Res Function(SellerAdvertisementsState) then) =
      _$SellerAdvertisementsStateCopyWithImpl<$Res>;
  $Res call(
      {Either<AdvertisementFailure, List<Advertisement>>?
          sellerAdsFailureOrSuccess,
      bool loading,
      bool someExpanded});
}

/// @nodoc
class _$SellerAdvertisementsStateCopyWithImpl<$Res>
    implements $SellerAdvertisementsStateCopyWith<$Res> {
  _$SellerAdvertisementsStateCopyWithImpl(this._value, this._then);

  final SellerAdvertisementsState _value;
  // ignore: unused_field
  final $Res Function(SellerAdvertisementsState) _then;

  @override
  $Res call({
    Object? sellerAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
    Object? someExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      sellerAdsFailureOrSuccess: sellerAdsFailureOrSuccess == freezed
          ? _value.sellerAdsFailureOrSuccess
          : sellerAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      someExpanded: someExpanded == freezed
          ? _value.someExpanded
          : someExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SellerAdvertisementsStateCopyWith<$Res>
    implements $SellerAdvertisementsStateCopyWith<$Res> {
  factory _$SellerAdvertisementsStateCopyWith(_SellerAdvertisementsState value,
          $Res Function(_SellerAdvertisementsState) then) =
      __$SellerAdvertisementsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<AdvertisementFailure, List<Advertisement>>?
          sellerAdsFailureOrSuccess,
      bool loading,
      bool someExpanded});
}

/// @nodoc
class __$SellerAdvertisementsStateCopyWithImpl<$Res>
    extends _$SellerAdvertisementsStateCopyWithImpl<$Res>
    implements _$SellerAdvertisementsStateCopyWith<$Res> {
  __$SellerAdvertisementsStateCopyWithImpl(_SellerAdvertisementsState _value,
      $Res Function(_SellerAdvertisementsState) _then)
      : super(_value, (v) => _then(v as _SellerAdvertisementsState));

  @override
  _SellerAdvertisementsState get _value =>
      super._value as _SellerAdvertisementsState;

  @override
  $Res call({
    Object? sellerAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
    Object? someExpanded = freezed,
  }) {
    return _then(_SellerAdvertisementsState(
      sellerAdsFailureOrSuccess: sellerAdsFailureOrSuccess == freezed
          ? _value.sellerAdsFailureOrSuccess
          : sellerAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>?,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      someExpanded: someExpanded == freezed
          ? _value.someExpanded
          : someExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SellerAdvertisementsState implements _SellerAdvertisementsState {
  const _$_SellerAdvertisementsState(
      {required this.sellerAdsFailureOrSuccess,
      required this.loading,
      required this.someExpanded});

  @override
  final Either<AdvertisementFailure, List<Advertisement>>?
      sellerAdsFailureOrSuccess;
  @override
  final bool loading;
  @override
  final bool someExpanded;

  @override
  String toString() {
    return 'SellerAdvertisementsState(sellerAdsFailureOrSuccess: $sellerAdsFailureOrSuccess, loading: $loading, someExpanded: $someExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerAdvertisementsState &&
            (identical(other.sellerAdsFailureOrSuccess,
                    sellerAdsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.sellerAdsFailureOrSuccess,
                    sellerAdsFailureOrSuccess)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.someExpanded, someExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.someExpanded, someExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(sellerAdsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(someExpanded);

  @JsonKey(ignore: true)
  @override
  _$SellerAdvertisementsStateCopyWith<_SellerAdvertisementsState>
      get copyWith =>
          __$SellerAdvertisementsStateCopyWithImpl<_SellerAdvertisementsState>(
              this, _$identity);
}

abstract class _SellerAdvertisementsState implements SellerAdvertisementsState {
  const factory _SellerAdvertisementsState(
      {required Either<AdvertisementFailure, List<Advertisement>>?
          sellerAdsFailureOrSuccess,
      required bool loading,
      required bool someExpanded}) = _$_SellerAdvertisementsState;

  @override
  Either<AdvertisementFailure, List<Advertisement>>?
      get sellerAdsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get someExpanded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerAdvertisementsStateCopyWith<_SellerAdvertisementsState>
      get copyWith => throw _privateConstructorUsedError;
}
