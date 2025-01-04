import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class InputSectionFromLogInView extends StatelessWidget {
  const InputSectionFromLogInView({
    super.key, this.onSavedToEmail, this.onSavedToPassword,
  });
  final void Function(String?)? onSavedToEmail;
  final void Function(String?)? onSavedToPassword;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomInput(
          validator: (value)
          {

          },
          hintText: 'Enter your email',
          labelText: 'Email',
          prefixIcon: Assets.imagesEmailIcon,
          onSaved:onSavedToEmail ,
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
