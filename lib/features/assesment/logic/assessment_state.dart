import 'package:freezed_annotation/freezed_annotation.dart';

part 'assessment_state.freezed.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const factory AssessmentState.step(int currentStep) = Step;
}
