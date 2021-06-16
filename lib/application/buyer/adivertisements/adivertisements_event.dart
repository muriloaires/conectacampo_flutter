part of 'adivertisements_bloc.dart';

@freezed
class AdivertisementsEvent with _$AdivertisementsEvent {
  const factory AdivertisementsEvent.expandedChanged({
    required int index,
    required bool isExpanded,
  }) = ExpandedChanged;
}
