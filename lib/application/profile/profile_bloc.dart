import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this.isBuyer})
      : super(ProfileState.initial(isBuyer: isBuyer));
  final bool isBuyer;
  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final user = await loadLoggedUser();

      yield state.copyWith(optionOfUserFailureOrSuccess: some(user));
    });
  }
}
