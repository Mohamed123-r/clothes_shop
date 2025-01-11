import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/core/widgets/custom_counter.dart';
import 'package:clothes_shop_app/core/widgets/custom_list_of_color.dart';
import 'package:clothes_shop_app/core/widgets/custom_size.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(32),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Product Name',
                      style: Styles.subTitle1Bold.copyWith(
                        color: kDarkGreyColor,
                      ),
                    ),
                    Text(
                      'Muslim Tops Loose',
                      style: Styles.caption1Regular.copyWith(
                        color: kGreyColor,
                      ),
                    ),
                  ],
                ),
                const CustomCounter(),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Size',
                      style: Styles.subTitle1Bold.copyWith(
                        color: kDarkGreyColor,
                      ),
                    ),
                    const Row(
                      children: [
                        CustomSize(
                          title: 'S',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomSize(
                          title: 'M',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomSize(
                          title: 'L',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomSize(
                          title: 'XL',
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        CustomSize(
                          title: 'XXL',
                        ),
                      ],
                    ),
                  ],
                ),
                const CustomListOfColor(colors: [
                  Colors.red,
                  Colors.black,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                ]),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Description',
              style: Styles.subTitle1Bold.copyWith(
                color: kDarkGreyColor,
              ),
            ),
            Text(
              'Get a little lift from these Sam Edelman sandals featuring ruched straps and leather lace-up ties, while a braided jute sole makes a fresh statement for summer',
              style: Styles.textButton.copyWith(
                color: kGreyColor,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Muslim Tops Loose',
                      style: Styles.caption2Regular.copyWith(
                        color: kGreyColor,
                      ),
                    ),
                    Text(
                      '1500 EG',
                      style: Styles.subTitle2Bold.copyWith(
                        color: kDarkGreyColor,
                      ),
                    ),
                  ],
                ),
                SecondCustomButton(
                  isMinWidth: true,
                  onPressed: () {},
                  title: 'Add To Cart',
                  child: const Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}