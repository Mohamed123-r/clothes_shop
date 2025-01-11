import 'package:flutter/material.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_cart.dart';
import '../../../domain/entities/product_entity.dart';

class SearchListItem extends StatelessWidget {
  const SearchListItem({
    super.key,
    required this.products,
  });

  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Row(
          children: [
            Text(
              'Result for suit',
              style: Styles.subTitle1Bold.copyWith(color: kDarkGreyColor),
            ),
            const Spacer(),
            Text(
              '${products.length} founds',
              style: Styles.caption1Regular.copyWith(
                color: kGreyColor,
                decorationColor: kGreyColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        products.isEmpty
            ? const Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: Center(
                  child: Text(
                    'Search about product.',
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  childAspectRatio: 0.65,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    products.length,
                    (index) {
                      return CustomCart(
                        id: products[index].id as int,
                        title: products[index].name,
                        subTitle: products[index].subCategory,
                        price: products[index].price.toString(),
                        image: products[index].imagePath,
                      );
                    },
                  ),
                ),
              ),
      ],
    );
  }
}
