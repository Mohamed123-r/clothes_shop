import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
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
      child: Wrap(
        spacing: 50,
        runSpacing: 15,
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () {
              logger.w(categories[index].id);
              Navigator.push(
                context,
                AppRouter.router(
                  RouteSettings(
                    name: AppRouter.kCategoriesDetailsView,
                    arguments: {
                      'id': categories[index].id,
                    },
                  ),
                ),
              );
            },
            child: CategoriesItem(
              title: categories[index].title,
              image: categories[index].imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
