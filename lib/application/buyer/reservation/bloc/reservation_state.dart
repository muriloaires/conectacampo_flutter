part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState({
    required ReservationStatus status,
    required bool isItemsVisible,
  }) = _ReservationState;

  factory ReservationState.initial() => const ReservationState(
      status: ReservationStatus.pending, isItemsVisible: false);
}
// const factory SearchFormState({required bool productSelected}) =
//       _SearchFormState;

//   factory SearchFormState.initial() =>
//       const SearchFormState(productSelected: false);
