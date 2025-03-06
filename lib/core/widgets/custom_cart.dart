import 'package:cached_network_image/cached_network_image.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import '../../constants.dart';
import '../utils/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.image,
    required this.id,
    required this.materials,
  });

  final String title;
  final int id;
  final String subTitle;

  final String price;

  final String image;
  final String materials;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          AppRouter.router(
            RouteSettings(name: AppRouter.kProductDetailsView, arguments: {
              'id': id,
            }),
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
            Center(
              child: Stack(
                children: [
                  CachedNetworkImage(
                    height: 150,
                    imageUrl: image,
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    placeholder: (context, url) => Skeletonizer(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          Assets.imagesTest,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) => const SizedBox(
                      width: double.infinity,
                      child: Icon(
                        Icons.error,
                      ),
                    ),
                  ),
                  ////// need to change
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Text(
                      materials,
                      style: TextStyle(
                        color: kWhiteColor,
                        backgroundColor: kDarkGreyColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
