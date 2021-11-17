import 'dart:convert';

import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';
import 'package:conectacampo/infrastructure/advertisement/model/model.dart';
import 'package:conectacampo/infrastructure/auth/token_repository.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: IAdvertisementsFacade)
class AdvertisementFacade extends IAdvertisementsFacade {
  static const routeAdvertisements = '/advertisements';
  static const routeGroupsAds = '/groups/advertisements';
  static const routeSellersAds = '/me/advertisements';
  static const routeAdsProducts = '/advertisement_products';
  static const routeGroups = '/group_memberships';

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      Place place) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeAdvertisements',
        {'place_id': place.id.toString(), 'future_delivery': 'true'});
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final advertisementsResponse = iterable.map((e) =>
          AdvertisementResponse.fromJson(e as Map<String, dynamic>).toDomain());

      final List<Advertisement> finalResult = advertisementsResponse
          .map((e) => e.copyWith(
              products:
                  e.products.map((f) => f.copyWith(advertisement: e)).toList()))
          .toList();
      return right(finalResult);
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<AdProduct>>> getAdProducts({
    required Place place,
    String? productName,
    String? kind,
    int? productId,
    int? quantity,
    String? rating,
    String? date
  }) async {
    final Map<String, dynamic> params = {'place_id': place.id};

    if (productName != null) {
      params.addAll({'name': productName});
      await saveSearchedName(productName);
    }
    if (kind != null) {
      params.addAll({'kind': kind});
    }
    if (productId != null) {
      params.addAll({'name': productName});
    }
    if (quantity != null) {
      params.addAll({'quantity': quantity.toString()});
    }
    if (rating != null) {
      params.addAll({'rating': rating});
    }
    if (date != null) {
      params.addAll({'delivery_at': date});
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

  @override
  Future<Either<AdvertisementFailure, Advertisement>> publishAdvertisement(
      NewAdvertisement newAdvertisement) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeAdvertisements');
    final request = http.MultipartRequest('POST', url);
    request.headers.addAll(getApiHeader());
    final accessTokenHeader = {
      'Authorization': 'Bearer ${await getCurrentAcessToken()}'
    };
    request.headers.addAll(accessTokenHeader);
    await setupMultipartRequest(request, newAdvertisement);

    Future<Either<AdvertisementFailure, Advertisement>> handleResponse(
        http.StreamedResponse response) async {
      if (response.statusCode >= 200 && response.statusCode < 300) {
        final body = await response.stream.bytesToString();
        final advertisement = AdvertisementResponse.fromJson(
            jsonDecode(body) as Map<String, dynamic>);
        return right(advertisement.toDomain());
      } else if (response.statusCode >= 400 && response.statusCode < 500) {
        return left(const AdvertisementFailure.requestError());
      } else {
        return left(const AdvertisementFailure.serverError());
      }
    }

    var response = await request.send();
    if (response.statusCode == 401) {
      if (await getNewToken()) {
        final newToken = {
          'Authorization': 'Bearer ${await getCurrentAcessToken()}'
        };
        request.headers.addAll(newToken);
        response = await request.send();
        return handleResponse(response);
      } else {
        return left(const AdvertisementFailure.unauthorized());
      }
    } else {
      return handleResponse(response);
    }
  }

  Future<void> setupMultipartRequest(
      http.MultipartRequest request, NewAdvertisement newAdvertisement) async {
    final adDate = newAdvertisement.date.getOrCrash();
    final groupAdDate = DateTime(adDate.year, adDate.month, adDate.day, 0,
        adDate.minute, adDate.second, adDate.millisecond, adDate.microsecond);
    request.fields['delivery_at'] = adDate.getServerDate();
    request.fields['available_for_groups_at'] = groupAdDate.getServerDate();
    request.fields['place_id'] = newAdvertisement.newAdDeliveryPlace?.id ?? '';
    request.fields['meeting_type'] = newAdvertisement.newAdDeliveryType;
    request.fields['meeting_type_description'] =
        newAdvertisement.newAdDeliveryDescription.getOrCrash();

    var index = 0;
    for (final product in newAdvertisement.products) {
      request.fields['products_attributes[$index][quantity]'] =
          product.newAdProductQuantity?.getOrCrash().toString() ?? '0';

      request.fields['products_attributes[$index][rating]'] =
          product.newAdProductRating?.getOrCrash().toString() ?? '0';

      request.fields['products_attributes[$index][kind]'] =
          product.newAdProductKind?.getOrCrash().toString() ?? '0';

      request.fields['products_attributes[$index][product_id]'] =
          product.newAdProduct?.id.toString() ?? '0';

      request.fields['products_attributes[$index][measurement_unit_id]'] =
          product.newAdProductUnitMeasure?.id.toString() ?? '0';

      for (final element in product.picturesPaths) {
        request.files.add(await http.MultipartFile.fromPath(
            'products_attributes[$index][images][]', element));
      }
      index++;
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>> getSellerAds(
      Place place) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeSellersAds',
        {'place_id': place.id.toString()});
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final advertisementsResponse = iterable.map((e) =>
          AdvertisementResponse.fromJson(e as Map<String, dynamic>).toDomain());
      final List<Advertisement> finalResult = advertisementsResponse
          .map((e) => e.copyWith(
              products:
                  e.products.map((f) => f.copyWith(advertisement: e)).toList()))
          .toList();
      return right(finalResult);
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>>
      getGroupsAds() async {
    final url = Uri.https(baseUrl, '$apiVersion$routeGroupsAds');
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final advertisementsResponse = iterable.map((e) =>
          AdvertisementResponse.fromJson(e as Map<String, dynamic>).toDomain());

      final List<Advertisement> finalResult = advertisementsResponse
          .map((e) => e.copyWith(
              products:
                  e.products.map((f) => f.copyWith(advertisement: e)).toList()))
          .toList();
      return right(finalResult);
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, List<AdProduct>>> getAdProductsByIds(
      List<int> ids) async {
    final params = {'ids[]': ids.map((e) => e.toString()).toList()};

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
  Future<Either<AdvertisementFailure, Unit>> leaveGroup(
      {required UniqueId sellerId}) async {
    final url = Uri.https(
        baseUrl, '$apiVersion/me$routeGroups/${sellerId.getOrCrash()}');
    final response = await getAuthenticatedDeleteRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Unit>> deleteAd(
      Advertisement advertisement) async {
    final url = Uri.https(
        baseUrl, '$apiVersion$routeAdvertisements/${advertisement.id}');
    final response = await getAuthenticatedDeleteRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }

  @override
  Future<Either<AdvertisementFailure, Advertisement>> getAdvertisement(
      int adId) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeAdvertisements/$adId');
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final ad = AdvertisementResponse.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
      return right(ad.toDomain());
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
}
