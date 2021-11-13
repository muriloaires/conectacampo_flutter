import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/notification/i_notification_facade.dart';
import 'package:conectacampo/domain/notification/notifications_failure.dart';
import 'package:conectacampo/infrastructure/notification/model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'notifications_bloc.freezed.dart';

part 'notifications_event.dart';

part 'notifications_state.dart';

@injectable
class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc(this.notificationFacade)
      : super(NotificationsState.initial());

  INotificationFacade notificationFacade;

  @override
  Stream<NotificationsState> mapEventToState(
    NotificationsEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final notificationsSuccessOrFailure =
          await notificationFacade.getNotifications();
      yield state.copyWith(notifications: notificationsSuccessOrFailure);
    });
  }
}
