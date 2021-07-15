// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'seller_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SellerSummaryEventTearOff {
  const _$SellerSummaryEventTearOff();

  _Started started() {
    return const _Started();
  }
}

/// @nodoc
const $SellerSummaryEvent = _$SellerSummaryEventTearOff();

/// @nodoc
mixin _$SellerSummaryEvent {
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
abstract class $SellerSummaryEventCopyWith<$Res> {
  factory $SellerSummaryEventCopyWith(
          SellerSummaryEvent value, $Res Function(SellerSummaryEvent) then) =
      _$SellerSummaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SellerSummaryEventCopyWithImpl<$Res>
    implements $SellerSummaryEventCopyWith<$Res> {
  _$SellerSummaryEventCopyWithImpl(this._value, this._then);

  final SellerSummaryEvent _value;
  // ignore: unused_field
  final $Res Function(SellerSummaryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$SellerSummaryEventCopyWithImpl<$Res>
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
    return 'SellerSummaryEvent.started()';
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

abstract class _Started implements SellerSummaryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
class _$SellerSummaryStateTearOff {
  const _$SellerSummaryStateTearOff();

  _SellerSummaryState call(
      {required Option<Place> optionOfOPlace,
      required Option<Either<AuthFailure, User>> optionOfOUser,
      required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfAdvertisementsFailureOrSuccess}) {
    return _SellerSummaryState(
      optionOfOPlace: optionOfOPlace,
      optionOfOUser: optionOfOUser,
      optionOfAdvertisementsFailureOrSuccess:
          optionOfAdvertisementsFailureOrSuccess,
    );
  }
}

/// @nodoc
const $SellerSummaryState = _$SellerSummaryStateTearOff();

/// @nodoc
mixin _$SellerSummaryState {
  Option<Place> get optionOfOPlace => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, User>> get optionOfOUser =>
      throw _privateConstructorUsedError;
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfAdvertisementsFailureOrSuccess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SellerSummaryStateCopyWith<SellerSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SellerSummaryStateCopyWith<$Res> {
  factory $SellerSummaryStateCopyWith(
          SellerSummaryState value, $Res Function(SellerSummaryState) then) =
      _$SellerSummaryStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Place> optionOfOPlace,
      Option<Either<AuthFailure, User>> optionOfOUser,
      Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfAdvertisementsFailureOrSuccess});
}

/// @nodoc
class _$SellerSummaryStateCopyWithImpl<$Res>
    implements $SellerSummaryStateCopyWith<$Res> {
  _$SellerSummaryStateCopyWithImpl(this._value, this._then);

  final SellerSummaryState _value;
  // ignore: unused_field
  final $Res Function(SellerSummaryState) _then;

  @override
  $Res call({
    Object? optionOfOPlace = freezed,
    Object? optionOfOUser = freezed,
    Object? optionOfAdvertisementsFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      optionOfOPlace: optionOfOPlace == freezed
          ? _value.optionOfOPlace
          : optionOfOPlace // ignore: cast_nullable_to_non_nullable
              as Option<Place>,
      optionOfOUser: optionOfOUser == freezed
          ? _value.optionOfOUser
          : optionOfOUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      optionOfAdvertisementsFailureOrSuccess:
          optionOfAdvertisementsFailureOrSuccess == freezed
              ? _value.optionOfAdvertisementsFailureOrSuccess
              : optionOfAdvertisementsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<AdvertisementFailure, List<Advertisement>>>,
    ));
  }
}

/// @nodoc
abstract class _$SellerSummaryStateCopyWith<$Res>
    implements $SellerSummaryStateCopyWith<$Res> {
  factory _$SellerSummaryStateCopyWith(
          _SellerSummaryState value, $Res Function(_SellerSummaryState) then) =
      __$SellerSummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Place> optionOfOPlace,
      Option<Either<AuthFailure, User>> optionOfOUser,
      Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfAdvertisementsFailureOrSuccess});
}

/// @nodoc
class __$SellerSummaryStateCopyWithImpl<$Res>
    extends _$SellerSummaryStateCopyWithImpl<$Res>
    implements _$SellerSummaryStateCopyWith<$Res> {
  __$SellerSummaryStateCopyWithImpl(
      _SellerSummaryState _value, $Res Function(_SellerSummaryState) _then)
      : super(_value, (v) => _then(v as _SellerSummaryState));

  @override
  _SellerSummaryState get _value => super._value as _SellerSummaryState;

  @override
  $Res call({
    Object? optionOfOPlace = freezed,
    Object? optionOfOUser = freezed,
    Object? optionOfAdvertisementsFailureOrSuccess = freezed,
  }) {
    return _then(_SellerSummaryState(
      optionOfOPlace: optionOfOPlace == freezed
          ? _value.optionOfOPlace
          : optionOfOPlace // ignore: cast_nullable_to_non_nullable
              as Option<Place>,
      optionOfOUser: optionOfOUser == freezed
          ? _value.optionOfOUser
          : optionOfOUser // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, User>>,
      optionOfAdvertisementsFailureOrSuccess:
          optionOfAdvertisementsFailureOrSuccess == freezed
              ? _value.optionOfAdvertisementsFailureOrSuccess
              : optionOfAdvertisementsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
                  as Option<Either<AdvertisementFailure, List<Advertisement>>>,
    ));
  }
}

/// @nodoc

class _$_SellerSummaryState implements _SellerSummaryState {
  const _$_SellerSummaryState(
      {required this.optionOfOPlace,
      required this.optionOfOUser,
      required this.optionOfAdvertisementsFailureOrSuccess});

  @override
  final Option<Place> optionOfOPlace;
  @override
  final Option<Either<AuthFailure, User>> optionOfOUser;
  @override
  final Option<Either<AdvertisementFailure, List<Advertisement>>>
      optionOfAdvertisementsFailureOrSuccess;

  @override
  String toString() {
    return 'SellerSummaryState(optionOfOPlace: $optionOfOPlace, optionOfOUser: $optionOfOUser, optionOfAdvertisementsFailureOrSuccess: $optionOfAdvertisementsFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SellerSummaryState &&
            (identical(other.optionOfOPlace, optionOfOPlace) ||
                const DeepCollectionEquality()
                    .equals(other.optionOfOPlace, optionOfOPlace)) &&
            (identical(other.optionOfOUser, optionOfOUser) ||
                const DeepCollectionEquality()
                    .equals(other.optionOfOUser, optionOfOUser)) &&
            (identical(other.optionOfAdvertisementsFailureOrSuccess,
                    optionOfAdvertisementsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfAdvertisementsFailureOrSuccess,
                    optionOfAdvertisementsFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(optionOfOPlace) ^
      const DeepCollectionEquality().hash(optionOfOUser) ^
      const DeepCollectionEquality()
          .hash(optionOfAdvertisementsFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  _$SellerSummaryStateCopyWith<_SellerSummaryState> get copyWith =>
      __$SellerSummaryStateCopyWithImpl<_SellerSummaryState>(this, _$identity);
}

abstract class _SellerSummaryState implements SellerSummaryState {
  const factory _SellerSummaryState(
      {required Option<Place> optionOfOPlace,
      required Option<Either<AuthFailure, User>> optionOfOUser,
      required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfAdvertisementsFailureOrSuccess}) = _$_SellerSummaryState;

  @override
  Option<Place> get optionOfOPlace => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, User>> get optionOfOUser =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfAdvertisementsFailureOrSuccess =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SellerSummaryStateCopyWith<_SellerSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
