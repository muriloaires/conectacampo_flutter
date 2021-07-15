part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGrousAdsSuccessOrFailure,
      required bool loading}) = _GroupState;

  factory GroupState.initial() =>
      GroupState(optionOfGrousAdsSuccessOrFailure: none(), loading: true);
}
