import 'package:doctor_flutter_app/core/routing/routes.dart';
import 'package:doctor_flutter_app/doc_app.dart';
import 'package:doctor_flutter_app/features/login/ui/widgets/login_screen.dart';
import 'package:doctor_flutter_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('Not route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
