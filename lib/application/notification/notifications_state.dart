part of 'notifications_bloc.dart';

@freezed
class NotificationsState with _$NotificationsState {
  const factory NotificationsState(
      {required Either<NotificationsFailure, List<NotificationResponse>>?
          notifications}) = _NotificationsState;

  factory NotificationsState.initial() => const NotificationsState(notifications: null);
}
