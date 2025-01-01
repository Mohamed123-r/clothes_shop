import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:clothes_shop_app/features/onboarding/presentation/view/start_view.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import '../../../../../core/database/cache/cache_helper.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_bottom_navigation_bar.dart';
import '../../../../../generated/assets.dart';

class SplashViewBody extends StatelessWidget {
  SplashViewBody({super.key});

  final bool onBoarding = CacheHelper().getData(key: "onBoarding") ?? false;
  final bool logInSuccess = CacheHelper().getData(key: "logInSuccess") ?? false;

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      backgroundColor: kVeryLightGreyColor,
      logo: Image.asset(
        Assets.imagesSplashImage,
        width: 240,
        height: 240,
        fit: BoxFit.fill,
      ),
      title: const Text(
        'Clothes Shop',
        style: Styles.heading1Bold,
      ),
      loaderColor: kDarkGreyColor,
      logoWidth: 60,
      loadingText: Text(
        'All You Want',
        style: Styles.caption1Regular.copyWith(
          color: kDarkGreyColor,
        ),
      ),
      navigator: onBoarding
          ? logInSuccess
              ? const CustomBottomNavigationBar()
              : const StartView()
          : const OnboardingView(),
      durationInSeconds: 3,
    );
  }
}
