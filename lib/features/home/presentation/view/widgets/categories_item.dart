import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class CategoriesItem extends StatelessWidget {
  const CategoriesItem({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          child: Image.asset(
            Assets.imagesCategoriesTest,
          ),
        ),
        Text(
          title,
          style: Styles.caption1Regular,
        ),
      ],
    );
  }
}
