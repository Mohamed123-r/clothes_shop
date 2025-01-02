import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../generated/assets.dart';

class CustomPasswordInput extends StatefulWidget {
  const CustomPasswordInput(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.onSaved});

  final String hintText;
  final String labelText;
  final void Function(String?)? onSaved;

  @override
  State<CustomPasswordInput> createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        }
        if (!RegExp(r'[A-Z]').hasMatch(value)) {
          return 'Must contain at least one uppercase letter [A-Z]';
        }
        if (!RegExp(r'[a-z]').hasMatch(value)) {
          return 'Must contain at least one lowercase letter [a-z]';
        }
        if (!RegExp(r'[0-9]').hasMatch(value)) {
          return 'Must contain at least one digit [0-9]';
        }
        if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
          return 'Must contain at least one special character [@-#-..]';
        }
        if (value.length < 8) {
          return 'Must be at least 8 characters long';
        }
        return null; // Password is valid
      },
      obscureText: _obscureText,
      onSaved: widget.onSaved,
      hintText: widget.hintText,
      labelText: widget.labelText,
      prefixIcon: Assets.imagesPasswordIcon,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            _obscureText = !_obscureText;
          });
        },
        icon: Icon(
          _obscureText ? Icons.visibility : Icons.visibility_off_outlined,
          color: kGreyColor,
        ),
      ),
    );
  }
}
