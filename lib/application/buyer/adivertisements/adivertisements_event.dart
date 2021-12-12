part of 'adivertisements_bloc.dart';

@freezed
class AdvertisementsEvent with _$AdvertisementsEvent {
  const factory AdvertisementsEvent.expandedChanged({
    required int index,
    required bool isExpanded,
  }) = ExpandedChanged;

  const factory AdvertisementsEvent.started() = _Started;
  const factory AdvertisementsEvent.placeChanged() = PlaceChanged;
  const factory AdvertisementsEvent.leaveGroupTapped(
      Advertisement? advertisement) = LeaveGroupTapped;
}
