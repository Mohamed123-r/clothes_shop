import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class InputSectionFromLogInView extends StatelessWidget {
  const InputSectionFromLogInView({
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
          height: 24,
        ),
        CustomPasswordInput(
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
      ],
    );
  }
}
