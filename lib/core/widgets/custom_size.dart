import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSize extends StatelessWidget {
  const CustomSize({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 16,
      backgroundColor: kLightGreyColor,
      child: Text(
        title,
        style: Styles.bodyText1Regular,
      ),
    );
  }
}
