import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:clothes_shop_app/core/widgets/custom_search.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomSearch(
              onTabFromFilter: () {},
            ),
            Row(
              children: [
                Text(
                  'Result for suit',
                  style: Styles.subTitle1Bold.copyWith(color: kDarkGreyColor),
                ),
                const Spacer(),
                Text(
                  '6,250 founds',
                  style: Styles.caption1Regular.copyWith(
                    color: kGreyColor,
                    decorationColor: kGreyColor,
                  ),
                ),
              ],
            ),
            GridView.count(
              padding: EdgeInsets.zero,
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                20,
                (index) {
                  return const CustomCart(
                    title: 'Muslim Tops Loose',
                    subTitle: 'Isdal',
                    price: '1500EG',
                    image: Assets.imagesTest,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
