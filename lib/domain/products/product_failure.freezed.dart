// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductFailureTearOff {
  const _$ProductFailureTearOff();

  Unauthorized unauthorized() {
    return const Unauthorized();
  }

  ServerError serverError() {
    return const ServerError();
  }

  RequestError requestError() {
    return const RequestError();
  }

  ProductsNotFound productsNotFound() {
    return const ProductsNotFound();
  }
}

/// @nodoc
const $ProductFailure = _$ProductFailureTearOff();

/// @nodoc
mixin _$ProductFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() serverError,
    required TResult Function() requestError,
    required TResult Function() productsNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    TResult Function()? requestError,
    TResult Function()? productsNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ServerError value) serverError,
    required TResult Function(RequestError value) requestError,
    required TResult Function(ProductsNotFound value) productsNotFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ServerError value)? serverError,
    TResult Function(RequestError value)? requestError,
    TResult Function(ProductsNotFound value)? productsNotFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFailureCopyWith<$Res> {
  factory $ProductFailureCopyWith(
          ProductFailure value, $Res Function(ProductFailure) then) =
      _$ProductFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductFailureCopyWithImpl<$Res>
    implements $ProductFailureCopyWith<$Res> {
  _$ProductFailureCopyWithImpl(this._value, this._then);

  final ProductFailure _value;
  // ignore: unused_field
  final $Res Function(ProductFailure) _then;
}

/// @nodoc
abstract class $UnauthorizedCopyWith<$Res> {
  factory $UnauthorizedCopyWith(
          Unauthorized value, $Res Function(Unauthorized) then) =
      _$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthorizedCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res>
    implements $UnauthorizedCopyWith<$Res> {
  _$UnauthorizedCopyWithImpl(
      Unauthorized _value, $Res Function(Unauthorized) _then)
      : super(_value, (v) => _then(v as Unauthorized));

  @override
  Unauthorized get _value => super._value as Unauthorized;
}

/// @nodoc

class _$Unauthorized implements Unauthorized {
  const _$Unauthorized();

  @override
  String toString() {
    return 'ProductFailure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() serverError,
    required TResult Function() requestError,
    required TResult Function() productsNotFound,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    TResult Function()? requestError,
    TResult Function()? productsNotFound,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ServerError value) serverError,
    required TResult Function(RequestError value) requestError,
    required TResult Function(ProductsNotFound value) productsNotFound,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ServerError value)? serverError,
    TResult Function(RequestError value)? requestError,
    TResult Function(ProductsNotFound value)? productsNotFound,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements ProductFailure {
  const factory Unauthorized() = _$Unauthorized;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$ProductFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'ProductFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() serverError,
    required TResult Function() requestError,
    required TResult Function() productsNotFound,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    TResult Function()? requestError,
    TResult Function()? productsNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ServerError value) serverError,
    required TResult Function(RequestError value) requestError,
    required TResult Function(ProductsNotFound value) productsNotFound,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ServerError value)? serverError,
    TResult Function(RequestError value)? requestError,
    TResult Function(ProductsNotFound value)? productsNotFound,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements ProductFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $RequestErrorCopyWith<$Res> {
  factory $RequestErrorCopyWith(
          RequestError value, $Res Function(RequestError) then) =
      _$RequestErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$RequestErrorCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res>
    implements $RequestErrorCopyWith<$Res> {
  _$RequestErrorCopyWithImpl(
      RequestError _value, $Res Function(RequestError) _then)
      : super(_value, (v) => _then(v as RequestError));

  @override
  RequestError get _value => super._value as RequestError;
}

/// @nodoc

class _$RequestError implements RequestError {
  const _$RequestError();

  @override
  String toString() {
    return 'ProductFailure.requestError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is RequestError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() serverError,
    required TResult Function() requestError,
    required TResult Function() productsNotFound,
  }) {
    return requestError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    TResult Function()? requestError,
    TResult Function()? productsNotFound,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ServerError value) serverError,
    required TResult Function(RequestError value) requestError,
    required TResult Function(ProductsNotFound value) productsNotFound,
  }) {
    return requestError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ServerError value)? serverError,
    TResult Function(RequestError value)? requestError,
    TResult Function(ProductsNotFound value)? productsNotFound,
    required TResult orElse(),
  }) {
    if (requestError != null) {
      return requestError(this);
    }
    return orElse();
  }
}

abstract class RequestError implements ProductFailure {
  const factory RequestError() = _$RequestError;
}

/// @nodoc
abstract class $ProductsNotFoundCopyWith<$Res> {
  factory $ProductsNotFoundCopyWith(
          ProductsNotFound value, $Res Function(ProductsNotFound) then) =
      _$ProductsNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsNotFoundCopyWithImpl<$Res>
    extends _$ProductFailureCopyWithImpl<$Res>
    implements $ProductsNotFoundCopyWith<$Res> {
  _$ProductsNotFoundCopyWithImpl(
      ProductsNotFound _value, $Res Function(ProductsNotFound) _then)
      : super(_value, (v) => _then(v as ProductsNotFound));

  @override
  ProductsNotFound get _value => super._value as ProductsNotFound;
}

/// @nodoc

class _$ProductsNotFound implements ProductsNotFound {
  const _$ProductsNotFound();

  @override
  String toString() {
    return 'ProductFailure.productsNotFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ProductsNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() serverError,
    required TResult Function() requestError,
    required TResult Function() productsNotFound,
  }) {
    return productsNotFound();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? serverError,
    TResult Function()? requestError,
    TResult Function()? productsNotFound,
    required TResult orElse(),
  }) {
    if (productsNotFound != null) {
      return productsNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
    required TResult Function(ServerError value) serverError,
    required TResult Function(RequestError value) requestError,
    required TResult Function(ProductsNotFound value) productsNotFound,
  }) {
    return productsNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    TResult Function(ServerError value)? serverError,
    TResult Function(RequestError value)? requestError,
    TResult Function(ProductsNotFound value)? productsNotFound,
    required TResult orElse(),
  }) {
    if (productsNotFound != null) {
      return productsNotFound(this);
    }
    return orElse();
  }
}

abstract class ProductsNotFound implements ProductFailure {
  const factory ProductsNotFound() = _$ProductsNotFound;
}
