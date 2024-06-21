import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_assessment_request_response.g.dart';

@JsonSerializable()
class CreateAssessmentRequestResponse {
  final Assessment assessment;

  CreateAssessmentRequestResponse({
    required this.assessment,
  });

  factory CreateAssessmentRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateAssessmentRequestResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateAssessmentRequestResponseToJson(this);
}

@JsonSerializable()
class Assessment {
  final int id;
  final String question1;
  final String question2;
  final String question3;
  final String question4;
  final String question5;
  final String question6;
  final String question7;
  final int result;
  @JsonKey(name: 'patient_id')
  final int patientId;
  @JsonKey(name: 'cognitive_status_id')
  final int cognitiveStatusId;
  @JsonKey(name: 'applicable_measures_id')
  final int applicableMeasuresId;

  Assessment({
    required this.id,
    required this.question1,
    required this.question2,
    required this.question3,
    required this.question4,
    required this.question5,
    required this.question6,
    required this.question7,
    required this.result,
    required this.patientId,
    required this.cognitiveStatusId,
    required this.applicableMeasuresId,
  });

  factory Assessment.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentToJson(this);
}
