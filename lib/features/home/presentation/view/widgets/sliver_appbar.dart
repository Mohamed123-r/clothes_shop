import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/database/cache/cache_helper.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    String title = "Welcome ";
    if (CacheHelper.sharedPreferences.getStringList(sharedPrefUserUser)![0] ==
        CacheHelper.sharedPreferences.getString(sharedPrefUserEmail)) {
      title +=
          CacheHelper.sharedPreferences.getStringList(sharedPrefUserUser)![1];
    } else {
      title += "to Clothes Shop";
    }
    return SliverAppBar(
      backgroundColor: kFontColor,
      leadingWidth: 0,
      leading: const SizedBox(),
      title: Text(
        title,
        style: Styles.subTitle2Bold.copyWith(color: kGreyColor),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              AppRouter.router(
                const RouteSettings(
                  name: AppRouter.kFavoriteView,
                ),
              ),
            );
          },
          icon: const Icon(
            Icons.favorite_border,
            color: kGreyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_none,
            color: kGreyColor,
          ),
        ),
      ],
    );
  }
}
