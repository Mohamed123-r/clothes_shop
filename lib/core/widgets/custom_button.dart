import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.isDefault = true,
      required this.onPressed,
      required this.title});

  final bool isDefault;
  final void Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48,
      elevation: isDefault ? null : 0,
      minWidth: double.infinity,
      color: isDefault ? kBlackColor : kVeryLightGreyColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: isDefault
            ? Styles.buttonBold.copyWith(
                color: kWhiteColor,
              )
            : Styles.textButton.copyWith(
                color: kBlackColor,
                decoration: TextDecoration.underline,
              ),
      ),
    );
  }
}

class SecondCustomButton extends StatelessWidget {
  const SecondCustomButton({
    super.key,
    this.isMinWidth = false,
    required this.onPressed,
    required this.title,
    required this.child,
    this.color = kBlackColor,
  });

  final bool isMinWidth;
  final void Function() onPressed;
  final String title;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 48,
      minWidth: isMinWidth
          ? (MediaQuery.of(context).size.width / 2) - 32
          : double.infinity,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: isMinWidth ? MainAxisSize.min : MainAxisSize.max,
        mainAxisAlignment: isMinWidth
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        children: isMinWidth
            ? [
                child,
                const SizedBox(width: 8),
                Text(
                  title,
                  style: Styles.buttonBold.copyWith(color: kWhiteColor),
                )
              ]
            : [
                Text(
                  title,
                  style: Styles.buttonBold.copyWith(
                    color: kWhiteColor,
                  ),
                ),
                child,
              ],
      ),
    );
  }
}
