import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:measureapp/core/routing/routes.dart';
import 'package:measureapp/features/assesment/data/repos/assessment_repo.dart';
import 'package:measureapp/features/assesment/logic/assessment_cubit.dart';
import 'package:measureapp/features/assesment/ui/screens/assessment_screen.dart';
import 'package:measureapp/features/home/logic/new_assessment_cubit.dart';
import 'package:measureapp/features/home/ui/screens/home_screen.dart';
import 'package:measureapp/features/home/ui/screens/new_assessment_screen.dart';
import 'package:measureapp/features/navigation/logic/navigation_cubit.dart';
import 'package:measureapp/features/navigation/ui/screens/navigation_screen.dart';

final getIt = GetIt.instance;

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.navigationScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NavigationCubit(),
            child: const NavigationScreen(),
          ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case Routes.newAssessmentScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => NewAssessmentCubit(),
            child: const NewAssessmentScreen(),
          ),
        );
      case Routes.assessmentScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => AssessmentCubit(getIt<AssessmentRepo>()),
            child: const AssessmentScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
