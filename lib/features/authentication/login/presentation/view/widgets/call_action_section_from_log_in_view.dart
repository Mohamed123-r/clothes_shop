import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_button.dart';
import 'package:clothes_shop_app/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CallActionSectionFromLogInView extends StatelessWidget {
  const CallActionSectionFromLogInView({
    super.key, required this.onPressed,

  });


  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: onPressed,
          title: 'LOGIN',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not a member?',
              style: Styles.bodyText1Regular.copyWith(
                color: kGreyColor,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  AppRouter.router(
                    const RouteSettings(
                      name: AppRouter.kSignUpView,
                    ),
                  ),
                );
              },
              style: const ButtonStyle(
                foregroundColor: WidgetStatePropertyAll(kDarkGreyColor),
              ),
              child: const Text(
                'SIGN UP',
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
                  const Text('Login with Google'),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
