import 'dart:convert';

import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';
import 'package:conectacampo/infrastructure/advertisement/model/model.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAdvertisementsFacade)
class AdvertisementFacade extends IAdvertisementsFacade {
  static const routeAdvertisements = '/advertisements';
  static const routeAdsProducts = '/advertisement_products';

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      Place place) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeAdvertisements',
        {'place_id': place.id.toString()});
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final advertisementsResponse = iterable.map((e) =>
          AdvertisementResponse.fromJson(e as Map<String, dynamic>).toDomain());

      for (var element in advertisementsResponse) {
        for (var product in element.products) {
          product.copyWith(advertisement: element);
        }
      }
      return right(advertisementsResponse.toList());
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<AdProduct>>> getProduct({
    required Place place,
    String? productName,
    String? kind,
    int? productId,
    int? quantity,
    String? rating,
  }) async {
    Map<String, dynamic> params = {'place_id': place.id};

    if (productName != null) {
      params.addAll({'name': productName});
      await saveSearchedName(productName);
    }
    if (kind != null) {
      params.addAll({'kind': productName});
    }
    if (productId != null) {
      params.addAll({'product_id': productName});
    }
    if (quantity != null) {
      params.addAll({'quantity': quantity});
    }
    if (rating != null) {
      params.addAll({'rating': rating});
    }

    final url = Uri.https(baseUrl, '$apiVersion$routeAdsProducts', params);
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final productsResponse = iterable.map((e) =>
          AdProductResponse.fromJson(e as Map<String, dynamic>).toDomain());

      return right(productsResponse.toList());
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code == 404) {
      return left(const AdvertisementFailure.productsNotFound());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Unit> saveSearchedName(String productName) async {
    final sharedPref = await SharedPreferences.getInstance();
    String lastText = sharedPref.getString('search_history') ?? '';
    if (lastText.contains(productName)) {
      return unit;
    }
    lastText += '\n$productName';
    sharedPref.setString('search_history', lastText);
    return unit;
  }

  @override
  Future<List<String>> getSearchedNames() async {
    final sharedPref = await SharedPreferences.getInstance();
    final lastText = sharedPref.getString('search_history') ?? '';
    final list = lastText.split('\n');
    if (list.length > 10) {
      return list.reversed.toList().sublist(0, 9);
    } else {
      return list.reversed.toList();
    }
  }
}
