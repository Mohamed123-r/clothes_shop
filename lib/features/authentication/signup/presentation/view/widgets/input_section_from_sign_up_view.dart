import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class InputSectionFromSignUpView extends StatelessWidget {
  const InputSectionFromSignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomInput(
          hintText: 'Enter your email',
          labelText: 'Email',
          prefixIcon: Assets.imagesEmailIcon,
        ),
        SizedBox(
          height: 12,
        ),
        CustomInput(
          hintText: 'Enter your name',
          labelText: 'Username',
          prefixIcon: Assets.imagesPersonIcon,
        ),
        SizedBox(
          height: 12,
        ),
        CustomPasswordInput(
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
        SizedBox(
          height: 12,
        ),
        CustomPasswordInput(
          hintText: 'Enter your password',
          labelText: 'Confirm Password',
        ),
        SizedBox(
          height: 12,
        ),
        CustomInput(
          hintText: 'Enter your Phone Number',
          labelText: 'Phone Number',
          prefixIcon: Assets.imagesPhoneIcon,
        ),
        SizedBox(
          height: 12,
        ),
        CustomInput(
          hintText: 'Enter your Location',
          labelText: 'Location',
          prefixIcon: Assets.imagesLocationIcons,
        ),
      ],
    );
  }
}
