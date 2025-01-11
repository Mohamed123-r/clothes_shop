import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:flutter/material.dart';

import 'app_bar-section.dart';
import 'details_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({
    super.key,
    required this.productDetails,
  });

  final ProductEntity productDetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Image.network(
            productDetails.imagePath,
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
