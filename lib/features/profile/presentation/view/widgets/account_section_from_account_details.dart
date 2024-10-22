import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class AccountSectionFromAccountDetails extends StatelessWidget {
  const AccountSectionFromAccountDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          Assets.imagesCategoriesTest,
          fit: BoxFit.fill,
          width: 70,
          height: 70,
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Mohamed',
          style: Styles.subTitle1Bold,
        ),
        Text(
          'Mexoattlla123@gmail.com',
          style: Styles.caption1Regular.copyWith(
            color: kDarkGreyColor,
          ),
        ),
      ],
    );
  }
}
