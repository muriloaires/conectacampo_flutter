part of 'group_bloc.dart';

@freezed
class GroupState with _$GroupState {
  const factory GroupState(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGroupsAdsSuccessOrFailure,
      required bool loading,
      required bool openSearch}) = _GroupState;

  factory GroupState.initial() => GroupState(
        optionOfGroupsAdsSuccessOrFailure: none(),
        loading: true,
        openSearch: false,
      );
}
