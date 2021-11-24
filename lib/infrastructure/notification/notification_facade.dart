import 'dart:convert';

import 'package:conectacampo/domain/notification/i_notification_facade.dart';
import 'package:conectacampo/domain/notification/notifications_failure.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:conectacampo/infrastructure/notification/model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: INotificationFacade)
class NotificationFacade extends INotificationFacade {
  static const routeCurrentUserNotifications = '/me/notifications';

  @override
  Future<Either<NotificationsFailure, List<NotificationResponse>>>
      getNotifications() async {
    final url = Uri.https(baseUrl, '$apiVersion$routeCurrentUserNotifications');
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final notificationsResponse = iterable
          .map((e) => NotificationResponse.fromJson(e as Map<String, dynamic>));
      return right(notificationsResponse.toList().reversed.toList());
    } else if (code == 401) {
      return left(const NotificationsFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const NotificationsFailure.requestError());
    } else {
      return left(const NotificationsFailure.serverError());
    }
  }
}
