import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_failure.freezed.dart';

@freezed
class ProductFailure with _$ProductFailure {
  const factory ProductFailure.unauthorized() = Unauthorized;
  const factory ProductFailure.serverError() = ServerError;
  const factory ProductFailure.requestError() = RequestError;
  const factory ProductFailure.productsNotFound() = ProductsNotFound;
}
