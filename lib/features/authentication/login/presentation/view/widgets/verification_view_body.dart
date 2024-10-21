import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_pinput.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Verification',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Check your e-mail we have sent you \nthe 6 digit code at your e-mail',
              textAlign: TextAlign.center,
              style: Styles.bodyText2Regular.copyWith(
                color: kGreyColor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomPinput(),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  AppRouter.router(
                    const RouteSettings(
                      name: AppRouter.kForgotPasswordView,
                    ),
                  ),
                );
              },
              title: 'Verify',
            ),
          ],
        ),
      ),
    );
  }
}
