import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

import 'categories_item.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

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
            10,
            (index) => const CategoriesItem(
              title: 'Kids', image: '',
            ),
          ),
        ),
      ),
    );
  }
}
