import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:flutter/material.dart';
import '../../../domain/entities/category_details_entity.dart';

class CategoriesDetailsViewBody extends StatelessWidget {
  const CategoriesDetailsViewBody({
    super.key,
    required this.categoriesDetails,
  });

  final List<CategoryDetailsEntity> categoriesDetails;

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
          categoriesDetails.length,
          (index) {
            return CustomCard(
              title: categoriesDetails[index].name,
              subTitle: categoriesDetails[index].subCategory,
              price: categoriesDetails[index].price.toString(),
              image: categoriesDetails[index].imagePath,
              id: categoriesDetails[index].id as int,
              materials: categoriesDetails[index].material,
            );
          },
        ),
      ),
    );
  }
}
