import 'dart:convert';

import 'package:conectacampo/domain/products/i_product_facade.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/domain/products/product_failure.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:conectacampo/infrastructure/product/model/model.dart';
import 'package:conectacampo/infrastructure/product/product_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProductFacade)
class ProductFacade extends IProductFacade {
  static const routeProducts = '/products';
  @override
  Future<Either<ProductFailure, List<Product>>> getAllProducts() async {
    final url = Uri.https(baseUrl, '$apiVersion$routeProducts');
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final productsResponse = iterable.map((e) =>
          ProductResponse.fromJson(e as Map<String, dynamic>).toDomain());
      return right(productsResponse.toList());
    } else if (code == 401) {
      return left(const ProductFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ProductFailure.requestError());
    } else {
      return left(const ProductFailure.serverError());
    }
  }
}
