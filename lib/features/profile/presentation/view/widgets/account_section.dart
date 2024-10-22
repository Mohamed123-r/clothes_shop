import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Image.asset(
            Assets.imagesCategoriesTest,
            fit: BoxFit.fill,
            width: 70,
            height: 70,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Mohamed',
                style: Styles.subTitle1Bold,
              ),
              Text(
                'Mexoattlla123@gmail.com',
                style: Styles.caption1Regular.copyWith(color: kDarkGreyColor),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      AppRouter.router(
                        const RouteSettings(
                          name: AppRouter.kEditProfile,
                        ),
                      ),
                    );
                  },
                  child: Text(
                    'EDIT PROFILE',
                    style:
                        Styles.caption2Regular.copyWith(color: kDarkGreyColor),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
