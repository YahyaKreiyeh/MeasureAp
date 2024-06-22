import 'package:measureapp/core/networking/api_error_handler.dart';
import 'package:measureapp/core/networking/api_result.dart';
import 'package:measureapp/features/assesment/data/apis/assessment_api_service.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_body.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';

class AssessmentRepo {
  final AssessmentApiService _assessmentApiService;

  AssessmentRepo(this._assessmentApiService);

  Future<ApiResult<CreateAssessmentRequestResponse>> create(
    CreateAssessmentRequestBody createAssessmentRequestBody,
  ) async {
    try {
      final response =
          await _assessmentApiService.create(createAssessmentRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
