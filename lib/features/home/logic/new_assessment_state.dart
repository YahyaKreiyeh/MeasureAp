import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_assessment_state.freezed.dart';

@freezed
class NewAssessmentState with _$NewAssessmentState {
  const factory NewAssessmentState({
    required bool isFirstDropdownEnabled,
    required bool isSecondDropdownEnabled,
    required bool isAutocompleteEnabled,
    required bool isButtonEnabled,
    required bool isLoading,
    String? selectedFirstDropdownItem,
    String? selectedSecondDropdownItem,
    String? selectedAutocompleteItem,
  }) = _NewAssessmentState;

  factory NewAssessmentState.initial() => const NewAssessmentState(
        isFirstDropdownEnabled: true,
        isSecondDropdownEnabled: false,
        isAutocompleteEnabled: false,
        isButtonEnabled: false,
        isLoading: false,
      );
}
