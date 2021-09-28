import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
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

      yield state.copyWith(
          user: user.foldRight(
              User(
                  UniqueId.fromUniqueString('id'),
                  FullName('Full name'),
                  Nickname('Nickname'),
                  '',
                  PhoneNumber('+5562999999999'),
                  null,
                  null,
                  null,
                  null,
                  null),
              (r, previous) => r),
          isBuyer: isBuyer == 'buyer');
    });
  }
}
