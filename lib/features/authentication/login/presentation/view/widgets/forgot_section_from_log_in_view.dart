import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ForgotSectionFromLogInView extends StatelessWidget {
  const ForgotSectionFromLogInView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {},
          child: Text('Forgot password?',
              style: Styles.bodyText1Regular.copyWith(
                color: kGreyColor,
              )),
        ),
      ],
    );
  }
}
