

import 'package:dr_system/core/routing/routes.dart';
import 'package:dr_system/features/login/ui/widgets/login_screen.dart';
import 'package:dr_system/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const Placeholder(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
          ),
        );
    }
  }
}
