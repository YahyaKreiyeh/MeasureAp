import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_body.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';
import 'package:measureapp/features/assesment/data/repos/assessment_repo.dart';
import 'package:measureapp/features/assesment/logic/create_assessment_state.dart';

class CreateAssessmentCubit extends Cubit<CreateAssessmentState> {
  final AssessmentRepo assessmentRepo;

  CreateAssessmentCubit(this.assessmentRepo) : super(AssessmentInitial());

  final Map<String, String> _answers = {};

  void recordAnswer(String question, String answer) {
    _answers[question] = answer;
  }

  Future<void> submitAssessment() async {
    emit(AssessmentLoading());

    final assessment = Assessment(
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
    );

    final requestBody = CreateAssessmentRequestBody(assessment: assessment);

    final result = await assessmentRepo.create(requestBody);

    result.when(
      success: (response) => emit(AssessmentSuccess(response)),
      failure: (error) => emit(const AssessmentFailure('error.message')),
    );
  }
}
