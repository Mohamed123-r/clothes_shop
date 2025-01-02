import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../utils/styles.dart';

class CustomInput extends StatelessWidget {
  const CustomInput(
      {super.key,
      required this.hintText,
      required this.labelText,
      required this.prefixIcon,
      this.suffixIcon,
      this.onSaved,
      this.obscureText,
      this.validator,
      this.keyboardType});

  final String hintText;
  final String labelText;
  final String prefixIcon;

  final Widget? suffixIcon;
  final void Function(String?)? onSaved;
  final bool? obscureText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      keyboardType: keyboardType ?? TextInputType.text,
      onSaved: onSaved,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Field is required';
            }
            return null;
          },
      cursorColor: kGreyColor,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        filled: true,
        fillColor: Colors.transparent,
        hintText: hintText,
        labelText: labelText,
        labelStyle: Styles.subTitle2Bold.copyWith(
          color: kGreyColor,
        ),
        hintStyle: Styles.bodyText1Regular.copyWith(
          color: kGreyColor,
        ),
        prefixIcon: SizedBox(
          width: 68,
          child: Row(
            children: [
              const Spacer(),
              SvgPicture.asset(
                prefixIcon,
                fit: BoxFit.scaleDown,
              ),
              const Spacer(),
              Container(
                width: 2,
                height: 35,
                color: kLightGreyColor,
              ),
              const SizedBox(
                width: 8,
              )
            ],
          ),
        ),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kLightGreyColor,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kLightGreyColor,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: kLightGreyColor,
            width: 1,
          ),
        ),
      ),
    );
  }
}
