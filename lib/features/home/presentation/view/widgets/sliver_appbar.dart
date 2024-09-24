import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: kFontColor,
      leadingWidth: 0,
      leading: SizedBox(
      ),
      title: Text(
        "Location",
        style: Styles.subTitle2Bold.copyWith(color: kGreyColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_border,
            color: kGreyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.notifications_none,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}