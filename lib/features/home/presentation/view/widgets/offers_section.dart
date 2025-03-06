import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../domain/entities/offer_entity.dart';
import 'custom_caroisel_slider.dart';

class OffersSection extends StatelessWidget {
  const OffersSection({
    super.key,
    required this.offers,
  });
  final List<OfferEntity> offers;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
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
            for (int i = 0; i < offers.length; i++)
              CachedNetworkImage(
                imageUrl: offers[i].image,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => const Skeletonizer(
                    child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                )),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                ),
              ),
          ],
        ),
      ],
    );
  }
}
