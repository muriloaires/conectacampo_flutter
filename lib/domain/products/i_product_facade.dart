import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/domain/products/product_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IProductFacade {
  Future<Either<ProductFailure, List<Product>>> getAllProducts();
}
