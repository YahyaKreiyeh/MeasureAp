// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_assessment_request_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAssessmentRequestResponse _$CreateAssessmentRequestResponseFromJson(
        Map<String, dynamic> json) =>
    CreateAssessmentRequestResponse(
      assessment:
          Assessment.fromJson(json['assessment'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateAssessmentRequestResponseToJson(
        CreateAssessmentRequestResponse instance) =>
    <String, dynamic>{
      'assessment': instance.assessment,
    };

Assessment _$AssessmentFromJson(Map<String, dynamic> json) => Assessment(
      id: (json['id'] as num).toInt(),
      question1: json['question1'] as String,
      question2: json['question2'] as String,
      question3: json['question3'] as String,
      question4: json['question4'] as String,
      question5: json['question5'] as String,
      question6: json['question6'] as String,
      question7: json['question7'] as String,
      result: (json['result'] as num).toInt(),
      patientId: (json['patient_id'] as num).toInt(),
      cognitiveStatusId: (json['cognitive_status_id'] as num).toInt(),
      applicableMeasuresId: (json['applicable_measures_id'] as num).toInt(),
    );

Map<String, dynamic> _$AssessmentToJson(Assessment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question1': instance.question1,
      'question2': instance.question2,
      'question3': instance.question3,
      'question4': instance.question4,
      'question5': instance.question5,
      'question6': instance.question6,
      'question7': instance.question7,
      'result': instance.result,
      'patient_id': instance.patientId,
      'cognitive_status_id': instance.cognitiveStatusId,
      'applicable_measures_id': instance.applicableMeasuresId,
    };
