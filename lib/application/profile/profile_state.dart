part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({required User user, required bool isBuyer}) =
      _ProfileState;

  factory ProfileState.initial() => ProfileState(
        user: User(
          UniqueId.fromUniqueString('id'),
          FullName('Full name'),
          Nickname('Nickname'),
          '',
          PhoneNumber('+5562999999999'),
          null,
          null,
          null,
          null,
          null,
        ),
        isBuyer: true,
      );
}
