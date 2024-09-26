import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(context, title: 'Your Profile'),
        body: Column(
          children: [
            Row(
              children: [
                Image.asset(Assets.imagesCategoriesTest),
                Column(
                  children: [
                    Text(
                      'Mohamed',
                      style: Styles.subTitle1Bold,
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
