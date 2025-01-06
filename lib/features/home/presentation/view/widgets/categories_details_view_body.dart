import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';

class CategoriesDetailsViewBody extends StatelessWidget {
  const CategoriesDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GridView.count(
        padding: EdgeInsets.zero,
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        shrinkWrap: true,
        children: List.generate(
          20,
          (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  AppRouter.router(
                    const RouteSettings(
                      name: AppRouter.kProductDetailsView,
                    ),
                  ),
                );
              },
              child: const CustomCart(
                title: 'Muslim Tops Loose',
                subTitle: 'Isdal',
                price: '1500EG',
                image: Assets.imagesTest,
              ),
            );
          },
        ),
      ),
    );
  }
}
