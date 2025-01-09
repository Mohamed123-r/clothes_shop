import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/features/home/domain/entities/category_entity.dart';
import 'package:flutter/material.dart';

import 'categories_item.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    super.key,
    required this.categories,
  });

  final List<CategoryEntity> categories;

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
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 90,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      AppRouter.router(
                        RouteSettings(
                          name: AppRouter.kCategoriesDetailsView,
                          arguments: {'id': categories[index].id},
                        ),
                      ),
                    );
                  },
                  child: CategoriesItem(
                    title: categories[index].title,
                    image: categories[index].imageUrl,
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 16,
                );
              },
              itemCount: categories.length > 4 ? 4 : categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
