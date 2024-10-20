import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'call_action_section_from_log_in_view.dart';
import 'forgot_section_from_log_in_view.dart';
import 'input_section_from_log_in_view.dart';

class LogInViewBody extends StatelessWidget {
  const LogInViewBody({super.key});

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
              'Login',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Enter your information',
              style: Styles.heading3Bold.copyWith(
                color: kDarkGreyColor,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const InputSectionFromLogInView(),
            const ForgotSectionFromLogInView(),
            const SizedBox(
              height: 32,
            ),
            const CallActionSectionFromLogInView(),
          ],
        ),
      ),
    );
  }
}
