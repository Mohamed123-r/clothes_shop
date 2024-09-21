import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Sign up',
            style: Styles.heading2Bold,
          ),
          Text(
            'Create new account',
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
            height: 12,
          ),
          const CustomInput(
            hintText: 'Enter your name',
            labelText: 'Username',
            prefixIcon: Assets.imagesPersonIcon,
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomPasswordInput(
            hintText: 'Enter your password',
            labelText: 'Password',
          ),
          const SizedBox(
            height: 12,
          ),
          const CustomPasswordInput(
            hintText: 'Enter your password',
            labelText: 'Confirm Password',
          ),

          const SizedBox(
            height: 24,
          ),
          CustomButton(
            onPressed: () {},
            title: 'Sign up',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
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
                        name: AppRouter.kLogInView,
                      ),
                    ),
                  );
                },
                child: const Text(
                  'LOGIN',
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
