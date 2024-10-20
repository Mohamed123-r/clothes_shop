import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallActionSectionSignUpView extends StatelessWidget {
  const CallActionSectionSignUpView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {},
          title: 'Sign up',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: Styles.bodyText1Regular.copyWith(
                color: kGreyColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  AppRouter.router(
                    const RouteSettings(
                      name: AppRouter.kLogInView,
                    ),
                  ),
                );
              },
              style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(kDarkGreyColor),
              ),
              child: const Text(
                'LOGIN',
                style: Styles.caption1Regular,
              ),
            ),
          ],
        ),
        const Row(
          children: [
            Expanded(
              child: Divider(
                indent: 30,
                endIndent: 10,
                color: kGreyColor,
              ),
            ),
            Text(
              'Or',
              style: Styles.subTitle1Bold,
            ),
            Expanded(
              child: Divider(
                indent: 10,
                endIndent: 30,
                color: kGreyColor,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              minWidth: 250,
              height: 35,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6),
                side: const BorderSide(color: kFontColor),
              ),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    Assets.imagesGoogleIcon,
                    fit: BoxFit.scaleDown,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text('Sign up with Google'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
