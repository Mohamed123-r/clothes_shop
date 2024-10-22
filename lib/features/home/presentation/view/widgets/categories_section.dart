import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
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
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
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
                child: GestureDetector(
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
                  child: const CategoriesItem(
                    title: 'Men',
                  ),
                ),
              ),
              GestureDetector(
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
                child: const CategoriesItem(
                  title: 'Woman',
                ),
              ),
              GestureDetector(
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
                child: const CategoriesItem(
                  title: 'Kids',
                ),
              ),
              GestureDetector(
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
                child: const CategoriesItem(
                  title: 'New Arrival',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
