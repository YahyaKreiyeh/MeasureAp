import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/screens/assessment_screen.dart';
import 'package:measureapp/features/home/ui/screens/home_screen.dart';
import 'package:measureapp/features/home/ui/screens/new_assessment_screen.dart';
import 'package:measureapp/navigation_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.navigationScreen:
        return MaterialPageRoute(
          builder: (_) => const NavigationScreen(),
        );
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
          builder: (_) => BlocProvider(
            create: (context) => AssessmentCubit(),
            child: const AssessmentScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
