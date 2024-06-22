import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_body.dart'
    as s;
import 'package:measureapp/features/assesment/data/repos/assessment_repo.dart';
import 'package:measureapp/features/assesment/logic/assessment_state.dart';

class AssessmentCubit extends Cubit<AssessmentState> {
  final AssessmentRepo assessmentRepo;

  AssessmentCubit(this.assessmentRepo) : super(const AssessmentState.initial());

  final Map<String, String> _answers = {};

  void recordAnswer(String question, String answer) {
    _answers[question] = answer;
  }

  Future<void> submitAssessment() async {
    emit(const AssessmentState.loading());

    final assessment = s.CreateAssessmentRequestBody(
      assessment: s.Assessment(
        question1: _answers['question1'] ?? 'incorrect',
        question2: _answers['question2'] ?? 'incorrect',
        question3: _answers['question3'] ?? 'incorrect',
        question4: _answers['question4'] ?? 'incorrect',
        question5: _answers['question5'] ?? 'incorrect',
        question6: _answers['question6'] ?? 'incorrect',
        question7: _answers['question7'] ?? 'incorrect',
        patientId: 1,
        cognitiveStatusId: 1,
        applicableMeasuresId: 1,
      ),
    );

    final result = await assessmentRepo.create(assessment);

    result.when(
      success: (response) => emit(AssessmentState.success(response)),
      failure: (error) => emit(
          AssessmentState.failure(message: error.apiErrorModel.message ?? '')),
    );
  }
}
