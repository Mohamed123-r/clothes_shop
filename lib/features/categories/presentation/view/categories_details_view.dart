import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/categories_details_view_body.dart';

class CategoriesDetailsView extends StatelessWidget {
  const CategoriesDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        context,
        title: 'categories details',
      ),
      body: const CategoriesDetailsViewBody(),
    );
  }
}
