import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

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
              'Forgot Password',
              style: Styles.heading2Bold,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Please enter your e-mail address \n to continue',
              textAlign: TextAlign.center,
              style: Styles.bodyText2Regular.copyWith(
                color: kGreyColor,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomInput(
              hintText: 'Enter your email',
              labelText: 'Email',
              prefixIcon: Assets.imagesEmailIcon,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              onPressed: () {},
              title: 'Send',
            ),
          ],
        ),
      ),
    );
  }
}
