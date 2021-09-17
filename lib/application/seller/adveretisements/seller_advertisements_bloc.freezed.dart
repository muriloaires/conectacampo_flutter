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
}

/// @nodoc
const $SellerAdvertisementsEvent = _$SellerAdvertisementsEventTearOff();

/// @nodoc
mixin _$SellerAdvertisementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
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

abstract class _Started implements SellerAdvertisementsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SellerAdvertisementsStateTearOff {
  const _$SellerAdvertisementsStateTearOff();

  _SellerAdvertisementsState call(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfSellerAdsFailureOrSuccess,
      required bool loading}) {
    return _SellerAdvertisementsState(
      optionOfSellerAdsFailureOrSuccess: optionOfSellerAdsFailureOrSuccess,
      loading: loading,
    );
  }
}

/// @nodoc
const $SellerAdvertisementsState = _$SellerAdvertisementsStateTearOff();

/// @nodoc
mixin _$SellerAdvertisementsState {
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfSellerAdsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;

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
      {Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfSellerAdsFailureOrSuccess,
      bool loading});
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
    Object? optionOfSellerAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
  }) {
    return _then(_value.copyWith(
      optionOfSellerAdsFailureOrSuccess: optionOfSellerAdsFailureOrSuccess ==
              freezed
          ? _value.optionOfSellerAdsFailureOrSuccess
          : optionOfSellerAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<Advertisement>>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
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
      {Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfSellerAdsFailureOrSuccess,
      bool loading});
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
    Object? optionOfSellerAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
  }) {
    return _then(_SellerAdvertisementsState(
      optionOfSellerAdsFailureOrSuccess: optionOfSellerAdsFailureOrSuccess ==
              freezed
          ? _value.optionOfSellerAdsFailureOrSuccess
          : optionOfSellerAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<Advertisement>>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SellerAdvertisementsState implements _SellerAdvertisementsState {
  const _$_SellerAdvertisementsState(
      {required this.optionOfSellerAdsFailureOrSuccess, required this.loading});

  @override
  final Option<Either<AdvertisementFailure, List<Advertisement>>>
      optionOfSellerAdsFailureOrSuccess;
  @override
  final bool loading;

  @override
  String toString() {
    return 'SellerAdvertisementsState(optionOfSellerAdsFailureOrSuccess: $optionOfSellerAdsFailureOrSuccess, loading: $loading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerAdvertisementsState &&
            (identical(other.optionOfSellerAdsFailureOrSuccess,
                    optionOfSellerAdsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfSellerAdsFailureOrSuccess,
                    optionOfSellerAdsFailureOrSuccess)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality().equals(other.loading, loading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(optionOfSellerAdsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(loading);

  @JsonKey(ignore: true)
  @override
  _$SellerAdvertisementsStateCopyWith<_SellerAdvertisementsState>
      get copyWith =>
          __$SellerAdvertisementsStateCopyWithImpl<_SellerAdvertisementsState>(
              this, _$identity);
}

abstract class _SellerAdvertisementsState implements SellerAdvertisementsState {
  const factory _SellerAdvertisementsState(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfSellerAdsFailureOrSuccess,
      required bool loading}) = _$_SellerAdvertisementsState;

  @override
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfSellerAdsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerAdvertisementsStateCopyWith<_SellerAdvertisementsState>
      get copyWith => throw _privateConstructorUsedError;
}
