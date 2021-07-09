// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_ad_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewAdSummaryEventTearOff {
  const _$NewAdSummaryEventTearOff();

  _Started started({required NewAdvertisement newAdvertisement}) {
    return _Started(
      newAdvertisement: newAdvertisement,
    );
  }

  _EditTap editTap({required int index}) {
    return _EditTap(
      index: index,
    );
  }

  _AddItems addItemsTap() {
    return const _AddItems();
  }

  _Finish finish() {
    return const _Finish();
  }
}

/// @nodoc
const $NewAdSummaryEvent = _$NewAdSummaryEventTearOff();

/// @nodoc
mixin _$NewAdSummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) editTap,
    required TResult Function() addItemsTap,
    required TResult Function() finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? editTap,
    TResult Function()? addItemsTap,
    TResult Function()? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditTap value) editTap,
    required TResult Function(_AddItems value) addItemsTap,
    required TResult Function(_Finish value) finish,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditTap value)? editTap,
    TResult Function(_AddItems value)? addItemsTap,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAdSummaryEventCopyWith<$Res> {
  factory $NewAdSummaryEventCopyWith(
          NewAdSummaryEvent value, $Res Function(NewAdSummaryEvent) then) =
      _$NewAdSummaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewAdSummaryEventCopyWithImpl<$Res>
    implements $NewAdSummaryEventCopyWith<$Res> {
  _$NewAdSummaryEventCopyWithImpl(this._value, this._then);

  final NewAdSummaryEvent _value;
  // ignore: unused_field
  final $Res Function(NewAdSummaryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({NewAdvertisement newAdvertisement});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$NewAdSummaryEventCopyWithImpl<$Res>
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
      newAdvertisement: newAdvertisement == freezed
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
  const _$_Started({required this.newAdvertisement});

  @override
  final NewAdvertisement newAdvertisement;

  @override
  String toString() {
    return 'NewAdSummaryEvent.started(newAdvertisement: $newAdvertisement)';
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
    required TResult Function(int index) editTap,
    required TResult Function() addItemsTap,
    required TResult Function() finish,
  }) {
    return started(newAdvertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? editTap,
    TResult Function()? addItemsTap,
    TResult Function()? finish,
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
    required TResult Function(_EditTap value) editTap,
    required TResult Function(_AddItems value) addItemsTap,
    required TResult Function(_Finish value) finish,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditTap value)? editTap,
    TResult Function(_AddItems value)? addItemsTap,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NewAdSummaryEvent {
  const factory _Started({required NewAdvertisement newAdvertisement}) =
      _$_Started;

  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EditTapCopyWith<$Res> {
  factory _$EditTapCopyWith(_EditTap value, $Res Function(_EditTap) then) =
      __$EditTapCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class __$EditTapCopyWithImpl<$Res> extends _$NewAdSummaryEventCopyWithImpl<$Res>
    implements _$EditTapCopyWith<$Res> {
  __$EditTapCopyWithImpl(_EditTap _value, $Res Function(_EditTap) _then)
      : super(_value, (v) => _then(v as _EditTap));

  @override
  _EditTap get _value => super._value as _EditTap;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_EditTap(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_EditTap implements _EditTap {
  const _$_EditTap({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'NewAdSummaryEvent.editTap(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditTap &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$EditTapCopyWith<_EditTap> get copyWith =>
      __$EditTapCopyWithImpl<_EditTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) editTap,
    required TResult Function() addItemsTap,
    required TResult Function() finish,
  }) {
    return editTap(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? editTap,
    TResult Function()? addItemsTap,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (editTap != null) {
      return editTap(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditTap value) editTap,
    required TResult Function(_AddItems value) addItemsTap,
    required TResult Function(_Finish value) finish,
  }) {
    return editTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditTap value)? editTap,
    TResult Function(_AddItems value)? addItemsTap,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (editTap != null) {
      return editTap(this);
    }
    return orElse();
  }
}

abstract class _EditTap implements NewAdSummaryEvent {
  const factory _EditTap({required int index}) = _$_EditTap;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EditTapCopyWith<_EditTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AddItemsCopyWith<$Res> {
  factory _$AddItemsCopyWith(_AddItems value, $Res Function(_AddItems) then) =
      __$AddItemsCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddItemsCopyWithImpl<$Res>
    extends _$NewAdSummaryEventCopyWithImpl<$Res>
    implements _$AddItemsCopyWith<$Res> {
  __$AddItemsCopyWithImpl(_AddItems _value, $Res Function(_AddItems) _then)
      : super(_value, (v) => _then(v as _AddItems));

  @override
  _AddItems get _value => super._value as _AddItems;
}

/// @nodoc

class _$_AddItems implements _AddItems {
  const _$_AddItems();

  @override
  String toString() {
    return 'NewAdSummaryEvent.addItemsTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddItems);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) editTap,
    required TResult Function() addItemsTap,
    required TResult Function() finish,
  }) {
    return addItemsTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? editTap,
    TResult Function()? addItemsTap,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (addItemsTap != null) {
      return addItemsTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditTap value) editTap,
    required TResult Function(_AddItems value) addItemsTap,
    required TResult Function(_Finish value) finish,
  }) {
    return addItemsTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditTap value)? editTap,
    TResult Function(_AddItems value)? addItemsTap,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (addItemsTap != null) {
      return addItemsTap(this);
    }
    return orElse();
  }
}

abstract class _AddItems implements NewAdSummaryEvent {
  const factory _AddItems() = _$_AddItems;
}

/// @nodoc
abstract class _$FinishCopyWith<$Res> {
  factory _$FinishCopyWith(_Finish value, $Res Function(_Finish) then) =
      __$FinishCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinishCopyWithImpl<$Res> extends _$NewAdSummaryEventCopyWithImpl<$Res>
    implements _$FinishCopyWith<$Res> {
  __$FinishCopyWithImpl(_Finish _value, $Res Function(_Finish) _then)
      : super(_value, (v) => _then(v as _Finish));

  @override
  _Finish get _value => super._value as _Finish;
}

/// @nodoc

class _$_Finish implements _Finish {
  const _$_Finish();

  @override
  String toString() {
    return 'NewAdSummaryEvent.finish()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Finish);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) editTap,
    required TResult Function() addItemsTap,
    required TResult Function() finish,
  }) {
    return finish();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? editTap,
    TResult Function()? addItemsTap,
    TResult Function()? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_EditTap value) editTap,
    required TResult Function(_AddItems value) addItemsTap,
    required TResult Function(_Finish value) finish,
  }) {
    return finish(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_EditTap value)? editTap,
    TResult Function(_AddItems value)? addItemsTap,
    TResult Function(_Finish value)? finish,
    required TResult orElse(),
  }) {
    if (finish != null) {
      return finish(this);
    }
    return orElse();
  }
}

abstract class _Finish implements NewAdSummaryEvent {
  const factory _Finish() = _$_Finish;
}

/// @nodoc
class _$NewAdSummaryStateTearOff {
  const _$NewAdSummaryStateTearOff();

  _NewAdSummaryState call(
      {required NewAdvertisement newAdvertisement,
      required bool openEdit,
      required int editIndex,
      required bool addItems,
      required bool loading,
      required Option<Either<AdvertisementFailure, Advertisement>>
          optionOfAdvertisementFailureOrSucess}) {
    return _NewAdSummaryState(
      newAdvertisement: newAdvertisement,
      openEdit: openEdit,
      editIndex: editIndex,
      addItems: addItems,
      loading: loading,
      optionOfAdvertisementFailureOrSucess:
          optionOfAdvertisementFailureOrSucess,
    );
  }
}

/// @nodoc
const $NewAdSummaryState = _$NewAdSummaryStateTearOff();

/// @nodoc
mixin _$NewAdSummaryState {
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  bool get openEdit => throw _privateConstructorUsedError;
  int get editIndex => throw _privateConstructorUsedError;
  bool get addItems => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<AdvertisementFailure, Advertisement>>
      get optionOfAdvertisementFailureOrSucess =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewAdSummaryStateCopyWith<NewAdSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAdSummaryStateCopyWith<$Res> {
  factory $NewAdSummaryStateCopyWith(
          NewAdSummaryState value, $Res Function(NewAdSummaryState) then) =
      _$NewAdSummaryStateCopyWithImpl<$Res>;
  $Res call(
      {NewAdvertisement newAdvertisement,
      bool openEdit,
      int editIndex,
      bool addItems,
      bool loading,
      Option<Either<AdvertisementFailure, Advertisement>>
          optionOfAdvertisementFailureOrSucess});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class _$NewAdSummaryStateCopyWithImpl<$Res>
    implements $NewAdSummaryStateCopyWith<$Res> {
  _$NewAdSummaryStateCopyWithImpl(this._value, this._then);

  final NewAdSummaryState _value;
  // ignore: unused_field
  final $Res Function(NewAdSummaryState) _then;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
    Object? openEdit = freezed,
    Object? editIndex = freezed,
    Object? addItems = freezed,
    Object? loading = freezed,
    Object? optionOfAdvertisementFailureOrSucess = freezed,
  }) {
    return _then(_value.copyWith(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      openEdit: openEdit == freezed
          ? _value.openEdit
          : openEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      editIndex: editIndex == freezed
          ? _value.editIndex
          : editIndex // ignore: cast_nullable_to_non_nullable
              as int,
      addItems: addItems == freezed
          ? _value.addItems
          : addItems // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfAdvertisementFailureOrSucess: optionOfAdvertisementFailureOrSucess ==
              freezed
          ? _value.optionOfAdvertisementFailureOrSucess
          : optionOfAdvertisementFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, Advertisement>>,
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
abstract class _$NewAdSummaryStateCopyWith<$Res>
    implements $NewAdSummaryStateCopyWith<$Res> {
  factory _$NewAdSummaryStateCopyWith(
          _NewAdSummaryState value, $Res Function(_NewAdSummaryState) then) =
      __$NewAdSummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NewAdvertisement newAdvertisement,
      bool openEdit,
      int editIndex,
      bool addItems,
      bool loading,
      Option<Either<AdvertisementFailure, Advertisement>>
          optionOfAdvertisementFailureOrSucess});

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class __$NewAdSummaryStateCopyWithImpl<$Res>
    extends _$NewAdSummaryStateCopyWithImpl<$Res>
    implements _$NewAdSummaryStateCopyWith<$Res> {
  __$NewAdSummaryStateCopyWithImpl(
      _NewAdSummaryState _value, $Res Function(_NewAdSummaryState) _then)
      : super(_value, (v) => _then(v as _NewAdSummaryState));

  @override
  _NewAdSummaryState get _value => super._value as _NewAdSummaryState;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
    Object? openEdit = freezed,
    Object? editIndex = freezed,
    Object? addItems = freezed,
    Object? loading = freezed,
    Object? optionOfAdvertisementFailureOrSucess = freezed,
  }) {
    return _then(_NewAdSummaryState(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      openEdit: openEdit == freezed
          ? _value.openEdit
          : openEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      editIndex: editIndex == freezed
          ? _value.editIndex
          : editIndex // ignore: cast_nullable_to_non_nullable
              as int,
      addItems: addItems == freezed
          ? _value.addItems
          : addItems // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      optionOfAdvertisementFailureOrSucess: optionOfAdvertisementFailureOrSucess ==
              freezed
          ? _value.optionOfAdvertisementFailureOrSucess
          : optionOfAdvertisementFailureOrSucess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, Advertisement>>,
    ));
  }
}

/// @nodoc

class _$_NewAdSummaryState implements _NewAdSummaryState {
  const _$_NewAdSummaryState(
      {required this.newAdvertisement,
      required this.openEdit,
      required this.editIndex,
      required this.addItems,
      required this.loading,
      required this.optionOfAdvertisementFailureOrSucess});

  @override
  final NewAdvertisement newAdvertisement;
  @override
  final bool openEdit;
  @override
  final int editIndex;
  @override
  final bool addItems;
  @override
  final bool loading;
  @override
  final Option<Either<AdvertisementFailure, Advertisement>>
      optionOfAdvertisementFailureOrSucess;

  @override
  String toString() {
    return 'NewAdSummaryState(newAdvertisement: $newAdvertisement, openEdit: $openEdit, editIndex: $editIndex, addItems: $addItems, loading: $loading, optionOfAdvertisementFailureOrSucess: $optionOfAdvertisementFailureOrSucess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewAdSummaryState &&
            (identical(other.newAdvertisement, newAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.newAdvertisement, newAdvertisement)) &&
            (identical(other.openEdit, openEdit) ||
                const DeepCollectionEquality()
                    .equals(other.openEdit, openEdit)) &&
            (identical(other.editIndex, editIndex) ||
                const DeepCollectionEquality()
                    .equals(other.editIndex, editIndex)) &&
            (identical(other.addItems, addItems) ||
                const DeepCollectionEquality()
                    .equals(other.addItems, addItems)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.optionOfAdvertisementFailureOrSucess,
                    optionOfAdvertisementFailureOrSucess) ||
                const DeepCollectionEquality().equals(
                    other.optionOfAdvertisementFailureOrSucess,
                    optionOfAdvertisementFailureOrSucess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newAdvertisement) ^
      const DeepCollectionEquality().hash(openEdit) ^
      const DeepCollectionEquality().hash(editIndex) ^
      const DeepCollectionEquality().hash(addItems) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(optionOfAdvertisementFailureOrSucess);

  @JsonKey(ignore: true)
  @override
  _$NewAdSummaryStateCopyWith<_NewAdSummaryState> get copyWith =>
      __$NewAdSummaryStateCopyWithImpl<_NewAdSummaryState>(this, _$identity);
}

abstract class _NewAdSummaryState implements NewAdSummaryState {
  const factory _NewAdSummaryState(
      {required NewAdvertisement newAdvertisement,
      required bool openEdit,
      required int editIndex,
      required bool addItems,
      required bool loading,
      required Option<Either<AdvertisementFailure, Advertisement>>
          optionOfAdvertisementFailureOrSucess}) = _$_NewAdSummaryState;

  @override
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @override
  bool get openEdit => throw _privateConstructorUsedError;
  @override
  int get editIndex => throw _privateConstructorUsedError;
  @override
  bool get addItems => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  Option<Either<AdvertisementFailure, Advertisement>>
      get optionOfAdvertisementFailureOrSucess =>
          throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewAdSummaryStateCopyWith<_NewAdSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
