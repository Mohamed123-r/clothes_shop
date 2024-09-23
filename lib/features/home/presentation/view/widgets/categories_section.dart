import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'categories_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: Styles.heading3Bold.copyWith(color: kDarkGreyColor),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoriesItem(
                title: 'Men',
              ),
              CategoriesItem(
                title: 'Woman',
              ),
              CategoriesItem(
                title: 'Kids',
              ),
              CategoriesItem(
                title: 'New Arrival',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
