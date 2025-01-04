import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_cart.dart';
import 'package:clothes_shop_app/features/home/domain/entities/product_entity.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';


class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({
    super.key, required this.products,
  });
final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'New Arrival',
                style: Styles.heading3Bold.copyWith(color: kDarkGreyColor),
              ),
              const Spacer(),
              Text(
                'View all',
                style: Styles.textButton.copyWith(
                  color: kGreyColor,
                  decoration: TextDecoration.underline,
                  decorationColor: kGreyColor,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          GridView.count(
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
                return  CustomCart(
                  title: products[index].name,
                  subTitle: products[index].subCategory,
                  price: products[index].price.toString(),
                  image: Assets.imagesTest,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
