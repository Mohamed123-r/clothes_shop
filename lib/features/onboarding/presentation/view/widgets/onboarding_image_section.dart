import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';

class OnboardingImageSection extends StatelessWidget {
  const OnboardingImageSection({
    super.key,
    required this.theFirst,
    required this.onPressedToBack,
    required this.theLast,
    required this.onPressedToSkip,
    required this.image,
  });

  final bool? theFirst;
  final Function()? onPressedToBack;
  final bool? theLast;
  final Function()? onPressedToSkip;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  theFirst != true
                      ? IconButton(
                          onPressed: onPressedToBack,
                          icon: const Icon(
                            Icons.arrow_back_ios_new_outlined,
                          ),
                        )
                      : const SizedBox(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Stack(
              clipBehavior: Clip.none ,
          children: [
            Positioned(
              top: -40,
              left: -20,
              child: Image.asset(
                Assets.imagesOnboarding,

                fit: BoxFit.fill,
              ),
            ),
            Image.asset(
              image,

              fit: BoxFit.fill,
            ),
          ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
