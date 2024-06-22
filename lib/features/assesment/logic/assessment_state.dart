import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';

part 'assessment_state.freezed.dart';

@freezed
class AssessmentState with _$AssessmentState {
  const factory AssessmentState.initial() = _Initial;
  const factory AssessmentState.loading() = _Loading;
  const factory AssessmentState.success(
      CreateAssessmentRequestResponse response) = _Success;
  const factory AssessmentState.failure({required String message}) = _Failure;
  const factory AssessmentState.answerSelected({required int selectedIndex}) =
      _AnswerSelected;
}
