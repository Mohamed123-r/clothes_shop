import 'package:clothes_shop_app/core/widgets/custom_input.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../../generated/assets.dart';

class CustomPasswordInput extends StatefulWidget {
  const CustomPasswordInput(
      {super.key, required this.hintText, required this.labelText});

  final String hintText;
  final String labelText;

  @override
  State<CustomPasswordInput> createState() => _CustomPasswordInputState();
}

class _CustomPasswordInputState extends State<CustomPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return CustomInput(
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
