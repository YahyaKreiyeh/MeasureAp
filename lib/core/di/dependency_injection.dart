import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:measureapp/core/networking/dio_factory.dart';
import 'package:measureapp/features/assesment/data/apis/assessment_api_service.dart';
import 'package:measureapp/features/assesment/data/repos/assessment_repo.dart';

final getIt = GetIt.instance;

Future<void> initiateGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();

  // Assessment
  getIt.registerLazySingleton<AssessmentApiService>(
      () => AssessmentApiService(dio));
  getIt.registerLazySingleton<AssessmentRepo>(() => AssessmentRepo(getIt()));
}
