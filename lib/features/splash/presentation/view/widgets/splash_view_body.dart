import 'package:clothes_shop_app/constants.dart';
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
      logoWidth: MediaQuery.of(context).size.width * 0.5,
      logo: Image.asset(
        Assets.imagesSplashImage,
        width: 140,
        height: 140,
      ),
      title: const Text(
        'Clothes Shop',
        style: Styles.heading1Bold,
      ),
      showLoader: false,
      loadingText: Text(
        'All You Want',
        style: Styles.caption1Regular.copyWith(
          color: kDarkGreyColor,
        ),
      ),
      navigator: onBoarding
          ? logInSuccess
              ? const CustomBottomNavigationBar()
              : const CustomBottomNavigationBar()
          : const CustomBottomNavigationBar(),
      durationInSeconds: 3,
    );
  }
}
