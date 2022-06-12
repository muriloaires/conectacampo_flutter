import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/notification/notification_controller.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState.initial());

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final user = await loadLoggedUser();
      final isBuyer = await loadLoggedUserType();
      final displayNotification = await displayNotifications();
      yield state.copyWith(
          user: user,
          isBuyer: isBuyer == 'buyer',
          displayNotifications: displayNotification);
    }, onNotificationSwitchTapped: (OnNotificationSwitchTapped value) async* {
      await persistDisplayNotifications(display: value.value);
      yield state.copyWith(restartApplication: true);
    });
  }
}
