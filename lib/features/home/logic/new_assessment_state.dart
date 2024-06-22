import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_assessment_state.freezed.dart';

@freezed
class NewAssessmentState with _$NewAssessmentState {
  const factory NewAssessmentState({
    @Default(true) bool isFirstDropdownEnabled,
    @Default(false) bool isSecondDropdownEnabled,
    @Default(false) bool isAutocompleteEnabled,
    @Default(false) bool isButtonEnabled,
    @Default(false) bool isLoading,
    String? selectedFirstDropdownItem,
    String? selectedSecondDropdownItem,
    String? selectedAutocompleteItem,
  }) = _NewAssessmentState;

  factory NewAssessmentState.initial() => const NewAssessmentState();
}
