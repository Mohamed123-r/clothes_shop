import 'package:clothes_shop_app/features/authentication/login/presentation/view/log_in_view.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/start_view.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kStartView = '/start';
  static const kLogInView = '/login';
  static const kForgetPasswordView = '/forgetPassword';
  static const kPasswordCreatedSuccessfullyView =
      '/passwordCreatedSuccessfully';
  static const kSignUpView = '/signup';
  static const kSignupEmailVerification = '/signupEmailVerification';
  static const kBottomNavigationBar = '/bottomNavigationBar';
  static const kHomeView = '/home';

  static Route<Object?> router(RouteSettings settings) {
    switch (settings.name) {
      case kSplash:
        return MaterialPageRoute(builder: (context) {
          return const SplashView(); //replace this Scaffold with a Splash Screen
        });

      case kOnBoarding:
        return MaterialPageRoute(builder: (context) {
          return const OnboardingView(); //replace this Scaffold with a on boarding Screen
        });

      case kStartView:
        return MaterialPageRoute(builder: (context) {
          return const StartView(); //replace this Scaffold with a on boarding Screen
        });

      case kLogInView:
        return MaterialPageRoute(builder: (context) {
          return const LogInView();
        }); //replace this Scaffold with a on boarding Screen

      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(
              child: Text("AppStrings.notFound"),
            ),
          );
        });
    }
  }
}
