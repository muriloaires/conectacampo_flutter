part of 'single_advertisement_bloc.dart';

@freezed
class SingleAdvertisementEvent with _$SingleAdvertisementEvent {
  const factory SingleAdvertisementEvent.started(
    Advertisement advertisement,
    bool isExpanded,
  ) = Started;

  const factory SingleAdvertisementEvent.onCancelAdPressed(
      Advertisement advertisement) = OnCancelAdPressed;

  const factory SingleAdvertisementEvent.onItemExpandedPressed() =
      OnItemExpandedPressed;
}
