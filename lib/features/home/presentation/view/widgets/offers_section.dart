import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

import 'custom_caroisel_slider.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              Text(
                'Special offers',
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
        ),
        CustomCarouselSlider(
          height: 180,
          autoPlay: true,
          imageSliders: [
            Image.asset(Assets.imagesSliderTest),
            Image.asset(Assets.imagesSliderTest),
            Image.asset(Assets.imagesSliderTest),
          ],
        ),
      ],
    );
  }
}
