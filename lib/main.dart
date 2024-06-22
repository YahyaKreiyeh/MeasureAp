import 'package:flutter/material.dart';
import 'package:measureapp/core/di/dependency_injection.dart';
import 'package:measureapp/core/routing/app_router.dart';
import 'package:measureapp/measure_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initiateGetIt();
  runApp(
    MeasureApp(
      appRouter: AppRouter(),
    ),
  );
}
