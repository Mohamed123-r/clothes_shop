import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:flutter/material.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

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
              'New Password',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Please enter a new password',
              textAlign: TextAlign.center,
              style: Styles.bodyText2Regular.copyWith(
                color: kGreyColor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomPasswordInput(
              hintText: 'Enter New Password',
              labelText: 'New Password',
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomPasswordInput(
              hintText: 'Confirm Password',
              labelText: 'Confirm Password',
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
                      name: AppRouter.kVerificationView,
                    ),
                  ),
                );
              },
              title: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
