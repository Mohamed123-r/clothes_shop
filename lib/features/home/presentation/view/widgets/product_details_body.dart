import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

import 'app_bar-section.dart';
import 'details_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            Assets.imagesProducteDetailsTest,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          const AppBarSection(),
          const DetailsSection(),
        ],
      ),
    );
  }
}