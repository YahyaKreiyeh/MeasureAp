import 'package:equatable/equatable.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';

part 'create_assessment_state.freezed.dart';

abstract class CreateAssessmentState extends Equatable {
  const CreateAssessmentState();

  @override
  List<Object?> get props => [];
}

class AssessmentInitial extends CreateAssessmentState {}

class AssessmentLoading extends CreateAssessmentState {}

class AssessmentSuccess extends CreateAssessmentState {
  final CreateAssessmentRequestResponse response;

  const AssessmentSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class AssessmentFailure extends CreateAssessmentState {
  final String message;

  const AssessmentFailure(this.message);

  @override
  List<Object?> get props => [message];
}
