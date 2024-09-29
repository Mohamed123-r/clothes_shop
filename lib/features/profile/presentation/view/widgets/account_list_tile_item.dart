import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AccountListTileItem extends StatelessWidget {
  const AccountListTileItem({
    super.key,
    required this.title,
    required this.icon,
  });

  final String title;

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 18,
        color: kGreyColor,
      ),
      title: Text(
        title,
        style: Styles.bodyText2Regular.copyWith(
          color: kGreyColor,
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: kGreyColor,
        size: 18,
      ),
    );
  }
}
