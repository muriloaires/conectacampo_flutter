part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState(
      {required Option<Either<AuthFailure, User>> optionOfUserFailureOrSuccess,
      required bool isBuyer}) = _ProfileState;

  factory ProfileState.initial({required bool isBuyer}) =>
      ProfileState(optionOfUserFailureOrSuccess: none(), isBuyer: isBuyer);
}
