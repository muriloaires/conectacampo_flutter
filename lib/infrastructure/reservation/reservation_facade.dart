import 'dart:convert';

import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/database/database_provider.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IReservationFacade)
class ReservationFacade extends IReservationFacade {
  static const routeOwnGroupReservations = '/own_group/reservations';
  static const routeCurrentUserReservations = '/me/reservations';
  static const routeReservations = '/reservations';
  static const routeProductReservations = '/product_reservations';
  static const groupMemberships = '/group_memberships';

  @override
  Future<List<ReservationItem>> getItemsInCart() async {
    final list = await DatabaseHelper.instance.queryAllRows();
    return list.map((e) => e.toDomain()).toList();
  }

  @override
  Future<Either<ReservationFailure, ReservationItem>>
      insertReservationItemToCart(ReservationItem reservationItem) async {
    final result =
        await DatabaseHelper.instance.updateOrInsert(reservationItem.toLocal());

    return result.fold((l) => left(l), (r) => right(r.toDomain()));
  }

  @override
  Future<Unit> removeReservationItem(ReservationItem reservationItem) async {
    await DatabaseHelper.instance.delete(reservationItem.id);
    return unit;
  }

  @override
  Future<Option<ReservationItem>> getReservationItemByProduct(
      AdProduct product) async {
    final result = await DatabaseHelper.instance.select(product.id);
    return optionOf(result?.toDomain());
  }

  @override
  Future<Either<ReservationFailure, Unit>> requestReservation(
      {required ReservationObjRequest reservationObj}) async {
    final encode = jsonEncode(reservationObj);
    final url = Uri.https(baseUrl, '$apiVersion$routeReservations');
    final response =
        await getAuthenticatedPostRequest(url, getApiHeader(), encode);
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code == 422) {
      ReservationResponse? responseObj;
      try {
        responseObj = ReservationResponse.fromJson(
            jsonDecode(response.body) as Map<String, dynamic>);
      } catch (e) {}

      return left(ReservationFailure.unavailableItems(responseObj));
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> removeFromGroup(
      {required int userId}) async {
    final url = Uri.https(baseUrl, '$apiVersion$groupMemberships/$userId');
    final response = await getAuthenticatedDeleteRequest(
      url,
      getApiHeader(),
    );
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Unit> clearCart() async {
    return DatabaseHelper.instance.clearCart();
  }

  @override
  Future<Either<ReservationFailure, List<Reservation>>>
      getCurrentUserReservations() async {
    final place = await loadSelectedPlace();
    final url = Uri.https(baseUrl, '$apiVersion$routeCurrentUserReservations',
        {'as': 'buyer', 'future_delivery': 'true', 'place_id': place?.id});
    final response = await getAuthenticatedRequest(url, getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final reservationsResponse = iterable.map((e) =>
          ReservationResponse.fromJson(e as Map<String, dynamic>).toDomain());
      return right(reservationsResponse.toList());
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, List<Reservation>>>
      getSellerReservations() async {
    final place = await loadSelectedPlace();
    final url = Uri.https(baseUrl, '$apiVersion$routeCurrentUserReservations',
        {'as': 'seller', 'future_delivery': 'true', 'place_id': place?.id});
    final response = await getAuthenticatedRequest(url, getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final reservationsResponse = iterable.map((e) =>
          ReservationResponse.fromJson(e as Map<String, dynamic>).toDomain());
      return right(reservationsResponse.toList());
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> updateProductReservation(
      ProductReservation productReservation, int newQuantity) async {
    final url = Uri.https(baseUrl,
        '$apiVersion$routeProductReservations/${productReservation.id}');
    final response = await getAuthenticatedPatchRequest(url,
        headers: getApiHeader(), body: jsonEncode({'quantity': newQuantity}));

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> deleteProductReservation(
      ProductReservation productReservation) async {
    final url = Uri.https(baseUrl,
        '$apiVersion$routeProductReservations/${productReservation.id}');
    final response = await getAuthenticatedDeleteRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> cancelProductReservation(
      ProductReservation productReservation) async {
    final url = Uri.https(baseUrl,
        '$apiVersion$routeProductReservations/${productReservation.id}/cancel');
    final response =
        await getAuthenticatedPatchRequest(url, headers: getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> cancelReservation(
      Reservation reservation) async {
    final url = Uri.https(
        baseUrl, '$apiVersion$routeReservations/${reservation.id}/cancel');
    final response =
        await getAuthenticatedPatchRequest(url, headers: getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> confirmProductReservation(
      ProductReservation productReservation) async {
    final url = Uri.https(baseUrl,
        '$apiVersion$routeProductReservations/${productReservation.id}/confirm');
    final response =
        await getAuthenticatedPatchRequest(url, headers: getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Reservation>> getReservation(
      int reservationId) async {
    final url = Uri.https(
      baseUrl,
      '$apiVersion$routeReservations/$reservationId',
    );
    final response = await getAuthenticatedRequest(url, getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Map<String, dynamic> decode =
          jsonDecode(response.body) as Map<String, dynamic>;

      return right(ReservationResponse.fromJson(decode).toDomain());
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> updateReservation(
      int? reservationId, ReservationObjRequest reservationObj) async {
    final url =
        Uri.https(baseUrl, '$apiVersion$routeReservations/$reservationId');
    final response = await getAuthenticatedPatchRequest(url,
        headers: getApiHeader(), body: jsonEncode(reservationObj));

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> confirmReservation(
      Reservation reservation) async {
    final url = Uri.https(
        baseUrl, '$apiVersion$routeReservations/${reservation.id}/confirm');
    final response =
        await getAuthenticatedPatchRequest(url, headers: getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, Unit>> confirmReservationPayment(
      Reservation reservation) async {
    final url = Uri.https(baseUrl,
        '$apiVersion$routeReservations/${reservation.id}/confirm_payment');
    final response =
        await getAuthenticatedPatchRequest(url, headers: getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(unit);
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }

  @override
  Future<Either<ReservationFailure, List<Reservation>>>
      getSellerGroupReservations() async {
    final url = Uri.https(baseUrl, '$apiVersion$routeOwnGroupReservations');
    final response = await getAuthenticatedRequest(url, getApiHeader());

    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final reservationsResponse = iterable.map((e) =>
          ReservationResponse.fromJson(e as Map<String, dynamic>).toDomain());
      return right(reservationsResponse.toList());
    } else if (code == 401) {
      return left(const ReservationFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const ReservationFailure.requestError());
    } else {
      return left(const ReservationFailure.serverError());
    }
  }
}
