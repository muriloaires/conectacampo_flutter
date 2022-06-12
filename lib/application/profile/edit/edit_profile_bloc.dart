import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/i_auth_facade.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'edit_profile_bloc.freezed.dart';

part 'edit_profile_event.dart';

part 'edit_profile_state.dart';

@injectable
class EditProfileBloc extends Bloc<EditProfileEvent, EditProfileState> {
  EditProfileBloc(this.authFacade) : super(EditProfileState.initial());

  final IAuthFacade authFacade;

  @override
  Stream<EditProfileState> mapEventToState(EditProfileEvent event) async* {
    yield* event.map(
      started: (started) async* {
        final user = await loadLoggedUser();
        if (user != null) {
          yield state.copyWith(
            fullName: FullName(user.name ?? ''),
            nickname: Nickname(user.nickname ?? ''),
            email: Email(user.email ?? ''),
          );
        }
      },
      floatingActionButtonPressed: (value) async* {
        yield state.copyWith(showProgress: true);
        final result = await authFacade.updateUser(
          state.fullName.value.fold((l) => null, (fullName) => fullName),
          state.nickname.value.fold((l) => null, (nickname) => nickname),
          state.email.value.fold((l) => null, (email) => email),
        );
        yield state.copyWith(
          showProgress: false,
          userUpdateSuccessOrFailure: result,
        );
      },
      fullNameChanged: (value) async* {
        yield state.copyWith(fullName: FullName(value.fullName));
      },
      emailChanged: (value) async* {
        yield state.copyWith(email: Email(value.email));
      },
      nicknameChanged: (value) async* {
        yield state.copyWith(nickname: Nickname(value.nickname));
      },
    );
  }
}
