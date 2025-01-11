import 'package:clothes_shop_app/features/authentication/login/presentation/view/log_in_view.dart';
import 'package:clothes_shop_app/features/authentication/login/presentation/view/new_password_view.dart';
import 'package:clothes_shop_app/features/authentication/signup/presentation/view/sign_up_view.dart';
import 'package:clothes_shop_app/features/favorite/presentation/view/my_favorite.dart';
import 'package:clothes_shop_app/features/home/presentation/view/home_view.dart';
import 'package:clothes_shop_app/features/home/presentation/view/product_details_view.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/start_view.dart';
import 'package:clothes_shop_app/features/profile/presentation/view/account_details_view.dart';
import 'package:clothes_shop_app/features/profile/presentation/view/edit_profile_view.dart';
import 'package:clothes_shop_app/features/home/presentation/view/search_view.dart';
import 'package:flutter/material.dart';
import '../../features/authentication/login/presentation/view/forgot_password_view.dart';
import '../../features/authentication/login/presentation/view/verification_view.dart';
import '../../features/home/presentation/view/categories_details_view.dart';
import '../../features/home/presentation/view/categories_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

abstract class AppRouter {
  static const kSplash = '/';
  static const kOnBoarding = '/onBoarding';
  static const kStartView = '/start';
  static const kLogInView = '/login';
  static const kForgotPasswordView = '/forgotPassword';
  static const kVerificationView = '/verification';
  static const kNewPasswordView = '/newPassword';
  static const kSignUpView = '/signup';
  static const kBottomNavigationBar = '/bottomNavigationBar';
  static const kHomeView = '/home';
  static const kCategoriesView = '/categories';
  static const kCategoriesDetailsView = '/categoriesDetails';
  static const kProductDetailsView = '/productDetails';
  static const kSearchView = '/Search';
  static const kAccountView = '/account';
  static const kAccountDerailsView = '/accountDetails';
  static const kEditProfile = '/editProfile';
  static const kCartView = '/cart';
  static const kFavoriteView = '/favorite';

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

      case kForgotPasswordView:
        return MaterialPageRoute(builder: (context) {
          return const ForgotPasswordView();
        });

      case kVerificationView:
        return MaterialPageRoute(builder: (context) {
          return const VerificationView();
        });

      case kNewPasswordView:
        return MaterialPageRoute(builder: (context) {
          return const NewPasswordView();
        });

      case kSignUpView:
        return MaterialPageRoute(builder: (context) {
          return const SignUpView();
        }); //replace this Scaffold with a on boarding Screen

      case kBottomNavigationBar:
        return MaterialPageRoute(builder: (context) {
          return const CustomBottomNavigationBar();
        });

      case kHomeView:
        return MaterialPageRoute(builder: (context) {
          return const HomeView();
        });

      case kAccountDerailsView:
        return MaterialPageRoute(builder: (context) {
          return const AccountDetailsView();
        });

      case kCategoriesView:
        return MaterialPageRoute(builder: (context) {
          return const CategoriesView();
        });

      case kCategoriesDetailsView:
        final arguments = settings.arguments as Map<String, dynamic>;
        final id = arguments['id'] as int;
        return MaterialPageRoute(builder: (context) {
          return CategoriesDetailsView(
            id: id,
          );
        });

      case kProductDetailsView:
        final arguments = settings.arguments as Map<String, dynamic>;
        final id = arguments['id'] as int;
        return MaterialPageRoute(builder: (context) {
          return ProductDetailsView(
            id: id,
          );
        });

      case kEditProfile:
        return MaterialPageRoute(builder: (context) {
          return const EditProfileView();
        });

      case kSearchView:
        return MaterialPageRoute(builder: (context) {
          return const SearchView();
        });

      case kFavoriteView:
        return MaterialPageRoute(builder: (context) {
          return const MyFavorite();
        });

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
