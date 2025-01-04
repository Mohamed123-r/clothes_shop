import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:clothes_shop_app/core/widgets/custom_password_input.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class InputSectionFromSignUpView extends StatelessWidget {
  const InputSectionFromSignUpView({
    super.key,
    required this.onSavedToName,
    required this.onSavedToEmail,
    required this.onSavedToPassword,
    required this.onSavedToConfirmPassword,
    required this.onSavedToPhoneNumber,
    required this.onSavedToLocation,
  });

  final Function(String?) onSavedToName,
      onSavedToEmail,
      onSavedToPassword,
      onSavedToConfirmPassword,
      onSavedToPhoneNumber,
      onSavedToLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInput(
          onSaved: onSavedToName,
          keyboardType: TextInputType.name,
          hintText: 'Enter your name',
          labelText: 'Username',
          prefixIcon: Assets.imagesPersonIcon,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomInput(
          onSaved: onSavedToEmail,
          keyboardType: TextInputType.emailAddress,
          hintText: 'Enter your email',
          labelText: 'Email',
          prefixIcon: Assets.imagesEmailIcon,
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
        ),
        const SizedBox(
          height: 12,
        ),
        CustomPasswordInput(
          onSaved: onSavedToPassword,
          hintText: 'Enter your password',
          labelText: 'Password',
        ),
        const SizedBox(
          height: 12,
        ),
        CustomPasswordInput(
          onSaved: onSavedToConfirmPassword,
          hintText: 'Enter your password',
          labelText: 'Confirm Password',
        ),
        const SizedBox(
          height: 12,
        ),
        CustomInput(
          keyboardType: TextInputType.number,
          onSaved: onSavedToPhoneNumber,
          hintText: 'Enter your Phone Number',
          labelText: 'Phone Number',
          prefixIcon: Assets.imagesPhoneIcon,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Phone Number is required';
            }
            if (value.length != 11) {
              return 'Enter valid phone number';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 12,
        ),
        CustomInput(
          onSaved: onSavedToLocation,
          hintText: 'Enter your Location',
          labelText: 'Location',
          prefixIcon: Assets.imagesLocationIcons,
        ),
      ],
    );
  }
}
