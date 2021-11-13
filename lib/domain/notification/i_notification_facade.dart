import 'package:conectacampo/domain/notification/notifications_failure.dart';
import 'package:conectacampo/infrastructure/notification/model.dart';
import 'package:dartz/dartz.dart';

abstract class INotificationFacade {
  Future<Either<NotificationsFailure, List<NotificationResponse>>>
      getNotifications();
}
