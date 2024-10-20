import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'call_action_section_sign_up_view.dart';
import 'gender_section_from_sign_up_view.dart';
import 'input_section_from_sign_up_view.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Sign up',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Create new account',
              style: Styles.heading3Bold.copyWith(
                color: kDarkGreyColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const InputSectionFromSignUpView(),
            const SizedBox(height: 12.0),
            const GenderSectionFromSignUpView(),
            const CallActionSectionSignUpView(),
          ],
        ),
      ),
    );
  }
}

