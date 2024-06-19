import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_1_state.freezed.dart';

@freezed
class Assessment1ButtonSelectionState with _$Assessment1ButtonSelectionState {
  const factory Assessment1ButtonSelectionState.initial() = Initial;
  const factory Assessment1ButtonSelectionState.selected(int index) = Selected;
}
