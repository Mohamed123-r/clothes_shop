import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class StartViewBody extends StatelessWidget {
  const StartViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.imagesSplashImage,
            width: 130,
            height: 130,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'Clothes Shop',
            style: Styles.heading1Bold,
          ),
          Text(
            'All You Want',
            style: Styles.caption2Regular.copyWith(
              color: kDarkGreyColor,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(onPressed: () {}, title: "Sign up"),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an account?",
                style: Styles.bodyText1Regular.copyWith(
                  color: kDarkGreyColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    AppRouter.router(
                      const RouteSettings(
                        name: AppRouter.kLogInView,
                      ),
                    ),
                  );
                },
                child: Text(
                  "LOGIN",
                  style: Styles.textButton.copyWith(
                    color: kBlackColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
