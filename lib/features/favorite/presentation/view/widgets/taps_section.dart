import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class TapsSection extends StatelessWidget {
  const TapsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kLightGreyColor, width: 1),
          ),
          child: Center(
            child: Text(
              'All',
              style: Styles.caption2Regular.copyWith(color: kGreyColor),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kLightGreyColor, width: 1),
          ),
          child: Center(
            child: Text(
              'Jacket',
              style: Styles.caption2Regular.copyWith(color: kGreyColor),
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Container(
          height: 30,
          width: 50,
          decoration: BoxDecoration(
            color: kFontColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kLightGreyColor, width: 1),
          ),
          child: Center(
            child: Text(
              'Classic',
              style: Styles.caption2Regular.copyWith(color: kGreyColor),
            ),
          ),
        ),
        const Spacer(),
        Container(
          height: 30,
          width: 35,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: kLightGreyColor, width: 1),
          ),
          child: Center(
            child: SvgPicture.asset(
              Assets.imagesFilterIcon,
            ),
          ),
        )
      ],
    );
  }
}