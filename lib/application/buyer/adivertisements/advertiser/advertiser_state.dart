part of 'advertiser_bloc.dart';

@freezed
class AdvertiserState with _$AdvertiserState {
  const factory AdvertiserState({required User seller}) = _AdvertiserState;

  factory AdvertiserState.initial() => AdvertiserState(
      seller: User(
          UniqueId.fromUniqueString('as'),
          FullName('Full name'),
          Nickname('nickname'),
          'vehicleLicensePlate',
          PhoneNumber('62999999999'),
          null,
          null,
          null,
          null,
          null));
}
