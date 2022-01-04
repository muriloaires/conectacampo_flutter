part of 'single_advertisement_bloc.dart';

@freezed
class SingleAdvertisementState with _$SingleAdvertisementState {
  const factory SingleAdvertisementState({
    required bool canceling,
    required Option<Either<AdvertisementFailure, Unit>>
        optionOfDeleteAdFailureOrSuccess,
  }) = _SingleAdvertisementState;

  factory SingleAdvertisementState.initial() => SingleAdvertisementState(
        canceling: false,
        optionOfDeleteAdFailureOrSuccess: none(),
      );
}
