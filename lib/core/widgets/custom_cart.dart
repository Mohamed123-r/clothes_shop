import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import '../utils/styles.dart';

class CustomCart extends StatelessWidget {
  const CustomCart(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.price,
      required this.image});

  final String title;

  final String subTitle;

  final String price;

  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          AppRouter.router(
            const RouteSettings(
              name: AppRouter.kProductDetailsView,
            ),
          ),
        );
      },
      child: Container(
        height: 240,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: kWhiteColor,
          border: Border.all(color: kLightGreyColor),
          boxShadow: const [
            BoxShadow(
              color: kLightGreyColor,
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image, width: 160, height: 150, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    title,
                    style: Styles.caption2Regular.copyWith(
                      color: kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    subTitle,
                    style: Styles.caption2Regular.copyWith(
                      color: kGreyColor,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    price,
                    style: Styles.subTitle2Bold.copyWith(
                      color: kDarkGreyColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
