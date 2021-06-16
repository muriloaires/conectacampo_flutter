// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'adivertisements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdivertisementsEventTearOff {
  const _$AdivertisementsEventTearOff();

  ExpandedChanged expandedChanged(
      {required int index, required bool isExpanded}) {
    return ExpandedChanged(
      index: index,
      isExpanded: isExpanded,
    );
  }
}

/// @nodoc
const $AdivertisementsEvent = _$AdivertisementsEventTearOff();

/// @nodoc
mixin _$AdivertisementsEvent {
  int get index => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdivertisementsEventCopyWith<AdivertisementsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdivertisementsEventCopyWith<$Res> {
  factory $AdivertisementsEventCopyWith(AdivertisementsEvent value,
          $Res Function(AdivertisementsEvent) then) =
      _$AdivertisementsEventCopyWithImpl<$Res>;
  $Res call({int index, bool isExpanded});
}

/// @nodoc
class _$AdivertisementsEventCopyWithImpl<$Res>
    implements $AdivertisementsEventCopyWith<$Res> {
  _$AdivertisementsEventCopyWithImpl(this._value, this._then);

  final AdivertisementsEvent _value;
  // ignore: unused_field
  final $Res Function(AdivertisementsEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $ExpandedChangedCopyWith<$Res>
    implements $AdivertisementsEventCopyWith<$Res> {
  factory $ExpandedChangedCopyWith(
          ExpandedChanged value, $Res Function(ExpandedChanged) then) =
      _$ExpandedChangedCopyWithImpl<$Res>;
  @override
  $Res call({int index, bool isExpanded});
}

/// @nodoc
class _$ExpandedChangedCopyWithImpl<$Res>
    extends _$AdivertisementsEventCopyWithImpl<$Res>
    implements $ExpandedChangedCopyWith<$Res> {
  _$ExpandedChangedCopyWithImpl(
      ExpandedChanged _value, $Res Function(ExpandedChanged) _then)
      : super(_value, (v) => _then(v as ExpandedChanged));

  @override
  ExpandedChanged get _value => super._value as ExpandedChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(ExpandedChanged(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExpandedChanged implements ExpandedChanged {
  const _$ExpandedChanged({required this.index, required this.isExpanded});

  @override
  final int index;
  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'AdivertisementsEvent.expandedChanged(index: $index, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExpandedChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isExpanded);

  @JsonKey(ignore: true)
  @override
  $ExpandedChangedCopyWith<ExpandedChanged> get copyWith =>
      _$ExpandedChangedCopyWithImpl<ExpandedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
  }) {
    return expandedChanged(index, isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    required TResult orElse(),
  }) {
    if (expandedChanged != null) {
      return expandedChanged(index, isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
  }) {
    return expandedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    required TResult orElse(),
  }) {
    if (expandedChanged != null) {
      return expandedChanged(this);
    }
    return orElse();
  }
}

abstract class ExpandedChanged implements AdivertisementsEvent {
  const factory ExpandedChanged(
      {required int index, required bool isExpanded}) = _$ExpandedChanged;

  @override
  int get index => throw _privateConstructorUsedError;
  @override
  bool get isExpanded => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ExpandedChangedCopyWith<ExpandedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdivertisementsStateTearOff {
  const _$AdivertisementsStateTearOff();

  _AdivertisementsState call({required List<Advertising> ads}) {
    return _AdivertisementsState(
      ads: ads,
    );
  }
}

/// @nodoc
const $AdivertisementsState = _$AdivertisementsStateTearOff();

/// @nodoc
mixin _$AdivertisementsState {
  List<Advertising> get ads => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdivertisementsStateCopyWith<AdivertisementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdivertisementsStateCopyWith<$Res> {
  factory $AdivertisementsStateCopyWith(AdivertisementsState value,
          $Res Function(AdivertisementsState) then) =
      _$AdivertisementsStateCopyWithImpl<$Res>;
  $Res call({List<Advertising> ads});
}

/// @nodoc
class _$AdivertisementsStateCopyWithImpl<$Res>
    implements $AdivertisementsStateCopyWith<$Res> {
  _$AdivertisementsStateCopyWithImpl(this._value, this._then);

  final AdivertisementsState _value;
  // ignore: unused_field
  final $Res Function(AdivertisementsState) _then;

  @override
  $Res call({
    Object? ads = freezed,
  }) {
    return _then(_value.copyWith(
      ads: ads == freezed
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Advertising>,
    ));
  }
}

/// @nodoc
abstract class _$AdivertisementsStateCopyWith<$Res>
    implements $AdivertisementsStateCopyWith<$Res> {
  factory _$AdivertisementsStateCopyWith(_AdivertisementsState value,
          $Res Function(_AdivertisementsState) then) =
      __$AdivertisementsStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Advertising> ads});
}

/// @nodoc
class __$AdivertisementsStateCopyWithImpl<$Res>
    extends _$AdivertisementsStateCopyWithImpl<$Res>
    implements _$AdivertisementsStateCopyWith<$Res> {
  __$AdivertisementsStateCopyWithImpl(
      _AdivertisementsState _value, $Res Function(_AdivertisementsState) _then)
      : super(_value, (v) => _then(v as _AdivertisementsState));

  @override
  _AdivertisementsState get _value => super._value as _AdivertisementsState;

  @override
  $Res call({
    Object? ads = freezed,
  }) {
    return _then(_AdivertisementsState(
      ads: ads == freezed
          ? _value.ads
          : ads // ignore: cast_nullable_to_non_nullable
              as List<Advertising>,
    ));
  }
}

/// @nodoc

class _$_AdivertisementsState implements _AdivertisementsState {
  const _$_AdivertisementsState({required this.ads});

  @override
  final List<Advertising> ads;

  @override
  String toString() {
    return 'AdivertisementsState(ads: $ads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdivertisementsState &&
            (identical(other.ads, ads) ||
                const DeepCollectionEquality().equals(other.ads, ads)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ads);

  @JsonKey(ignore: true)
  @override
  _$AdivertisementsStateCopyWith<_AdivertisementsState> get copyWith =>
      __$AdivertisementsStateCopyWithImpl<_AdivertisementsState>(
          this, _$identity);
}

abstract class _AdivertisementsState implements AdivertisementsState {
  const factory _AdivertisementsState({required List<Advertising> ads}) =
      _$_AdivertisementsState;

  @override
  List<Advertising> get ads => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdivertisementsStateCopyWith<_AdivertisementsState> get copyWith =>
      throw _privateConstructorUsedError;
}
