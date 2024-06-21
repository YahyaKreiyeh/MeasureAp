import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_assessment_request_body.g.dart';

@JsonSerializable()
class CreateAssessmentRequestBody {
  final Assessment assessment;

  CreateAssessmentRequestBody({
    required this.assessment,
  });

  factory CreateAssessmentRequestBody.fromJson(Map<String, dynamic> json) =>
      _$CreateAssessmentRequestBodyFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAssessmentRequestBodyToJson(this);
}

@JsonSerializable()
class Assessment {
  final String question1;
  final String question2;
  final String question3;
  final String question4;
  final String question5;
  final String question6;
  final String question7;
  @JsonKey(name: 'patient_id')
  @Default(1)
  final int patientId;
  @JsonKey(name: 'cognitive_status_id')
  @Default(1)
  final int cognitiveStatusId;
  @JsonKey(name: 'applicable_measures_id')
  @Default(1)
  final int applicableMeasuresId;

  Assessment({
    required this.question1,
    required this.question2,
    required this.question3,
    required this.question4,
    required this.question5,
    required this.question6,
    required this.question7,
    required this.patientId,
    required this.cognitiveStatusId,
    required this.applicableMeasuresId,
  });

  factory Assessment.fromJson(Map<String, dynamic> json) =>
      _$AssessmentFromJson(json);

  Map<String, dynamic> toJson() => _$AssessmentToJson(this);
}
