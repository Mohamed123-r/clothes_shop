import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/category_entity.dart';
import 'categories_item.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key, required this.categories});

  final List<CategoryEntity> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            AppRouter.router(
              const RouteSettings(
                name: AppRouter.kCategoriesDetailsView,
              ),
            ),
          );
        },
        child: Wrap(
          spacing: 50,
          runSpacing: 15,
          children: List.generate(
            categories.length,
            (index) => CategoriesItem(
              title: categories[index].title,
              image: categories[index].imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
