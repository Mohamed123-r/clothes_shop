import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class InputSectionFromLogInView extends StatelessWidget {
  const InputSectionFromLogInView({
    super.key,
    this.onSavedToEmail,
    this.onSavedToPassword,
  });

  final void Function(String?)? onSavedToEmail;
  final void Function(String?)? onSavedToPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          validator: (value) {
            if (value!.isEmpty) {
              return 'Email is required';
            }
            if (!value.contains('@')) {
              return 'Enter valid email';
            }
            if (!value.endsWith('.com')) {
              return 'Enter valid email';
            }
            return null;
          },
          hintText: 'Enter your email',
          labelText: 'Email',
          prefixIcon: Assets.imagesEmailIcon,
          onSaved: onSavedToEmail,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomPasswordInput(
          onSaved: onSavedToPassword,
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
      ],
    );
  }
}
