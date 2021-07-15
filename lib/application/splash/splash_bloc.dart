import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial());

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      await Future.delayed(const Duration(seconds: 2));
      final initialRoute = await getInitialRoute();
      yield state.copyWith(firstScreen: some(initialRoute));
    });
  }
}

Future<String> getInitialRoute() async {
  final bool isTutorialSeen = await getOnboardingCheck();
  if (!isTutorialSeen) {
    return '/onboarding';
  }
  final userFailureOrSuccess = await loadLoggedUser();

  final bool isUserLogged = userFailureOrSuccess.isRight();

  if (!isUserLogged) {
    return '/sign_in';
  }

  final userType = await loadLoggedUserType();
  if (userType == null) {
    return '/sign_in';
  } else if (userType == 'seller') {
    return '/seller_main';
  } else {
    return '/buyer_main';
  }
}
