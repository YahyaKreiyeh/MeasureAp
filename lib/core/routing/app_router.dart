import 'package:flutter/material.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/features/home/ui/screens/assessment_screen.dart';
import 'package:measureapp/features/home/ui/screens/home_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.newAssessmentScreen:
        return MaterialPageRoute(
          builder: (_) => const NewAssessmentScreen(),
        );
      case Routes.assessmentScreen:
        return MaterialPageRoute(
          builder: (_) => const NewAssessmentScreen(),
        );
      default:
        return null;
    }
  }
}
