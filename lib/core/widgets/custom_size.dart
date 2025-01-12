import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSize extends StatelessWidget {
  const CustomSize(
      {super.key, required this.title, this.onTap, this.isSelected = false});

  final String title;
  final VoidCallback? onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 16,
        backgroundColor: isSelected ? Colors.black : kLightGreyColor,
        child: Text(
          title,
          style: Styles.bodyText1Regular.copyWith(
            color: isSelected ? kWhiteColor : kDarkGreyColor,
          ),
        ),
      ),
    );
  }
}
