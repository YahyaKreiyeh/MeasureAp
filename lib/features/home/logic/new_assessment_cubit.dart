import 'package:bloc/bloc.dart';

import 'new_assessment_state.dart';

class NewAssessmentCubit extends Cubit<NewAssessmentState> {
  NewAssessmentCubit() : super(NewAssessmentState.initial());

  void selectFirstDropdownItem(String value) {
    emit(state.copyWith(
      selectedFirstDropdownItem: value,
      isSecondDropdownEnabled: true,
    ));
  }

  void selectSecondDropdownItem(String value) {
    emit(state.copyWith(
      selectedSecondDropdownItem: value,
      isAutocompleteEnabled: true,
    ));
  }

  void selectAutocompleteItem(String value) {
    emit(state.copyWith(
      selectedAutocompleteItem: value,
      isButtonEnabled: true,
    ));
  }

  void startLoading() {
    emit(state.copyWith(isLoading: true));
  }

  void stopLoading() {
    emit(state.copyWith(isLoading: false));
  }
}
