import 'package:freezed_annotation/freezed_annotation.dart';

part 'animal_toggle_state.freezed.dart';

@freezed
class AnimalToggleState with _$AnimalToggleState {
  const factory AnimalToggleState.initial() = Initial;
  const factory AnimalToggleState.toggled(bool isSelected) = Toggled;
}
