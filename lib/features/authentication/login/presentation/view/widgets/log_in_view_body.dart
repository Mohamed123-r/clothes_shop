import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_router.dart';


class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Login',
            style: Styles.heading2Bold,
          ),
          Text(
            'Enter your information',
            style: Styles.heading3Bold.copyWith(
              color: kDarkGreyColor,
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomInput(
            hintText: 'Enter your email',
            labelText: 'Email',
            prefixIcon: Assets.imagesEmailIcon,
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomPasswordInput(
            hintText: 'Enter your password',
            labelText: 'Password',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Forgot password?',
                    style: Styles.bodyText1Regular.copyWith(
                      color: kGreyColor,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                AppRouter.router(
                  const RouteSettings(
                    name: AppRouter.kBottomNavigationBar,
                  ),
                ),
              );
            },
            title: 'Login',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Not a member?',
                style: Styles.bodyText1Regular.copyWith(
                  color: kGreyColor,
                ),
              ),
              TextButton(

                onPressed: () {
                  Navigator.push(
                    context,
                    AppRouter.router(
                      const RouteSettings(
                        name: AppRouter.kSignUpView,
                      ),
                    ),
                  );

                },
                child: const Text(
                  'SIGN UP',
                  style: Styles.caption1Regular,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
