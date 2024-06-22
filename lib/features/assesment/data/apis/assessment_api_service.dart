import 'package:dio/dio.dart';
import 'package:measureapp/core/networking/api_constants.dart';
import 'package:measureapp/features/assesment/data/apis/assessment_api_constants.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_body.dart';
import 'package:measureapp/features/assesment/data/models/create_assessment_request_response.dart';
import 'package:retrofit/retrofit.dart';

part 'assessment_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class AssessmentApiService {
  factory AssessmentApiService(Dio dio, {String baseUrl}) =
      _AssessmentApiService;

  @POST(AssessmentApiConstants.create)
  Future<CreateAssessmentRequestResponse> create(
    @Body() CreateAssessmentRequestBody createAssessmentRequestBody,
  );
}
