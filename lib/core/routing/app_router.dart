import 'package:flutter/material.dart';
import 'package:measureapp/core/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(),
        );
      default:
        return null;
    }
  }
}
