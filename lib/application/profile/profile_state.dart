part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({required User? user, required bool isBuyer}) =
      _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        user: null,
        isBuyer: true,
      );
}
