import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/logic/assessment_state.dart';

class AssessmentCubit extends Cubit<AssessmentState> {
  AssessmentCubit() : super(const AssessmentState.step(0));

  void nextStep() {
    state.maybeWhen(
      step: (currentStep) {
        if (currentStep < 4) {
          emit(AssessmentState.step(currentStep + 1));
        }
      },
      orElse: () {},
    );
  }

  void previousStep() {
    state.maybeWhen(
      step: (currentStep) {
        if (currentStep > 0) {
          emit(AssessmentState.step(currentStep - 1));
        }
      },
      orElse: () {},
    );
  }
}
