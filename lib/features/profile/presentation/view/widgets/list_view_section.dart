import 'package:clothes_shop_app/constants.dart';
import 'package:flutter/material.dart';

import 'account_list_tile_item.dart';

class ListViewSection extends StatelessWidget {
  const ListViewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      decoration:BoxDecoration(
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
      child: const Column(
        children: [
          AccountListTileItem(
            title: 'Account details',
            icon: Icons.list_alt,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Favorite',
            icon: Icons.favorite_border,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Notification',
            icon: Icons.notifications_none,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Payment',
            icon: Icons.payment_outlined,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'My Orders',
            icon: Icons.card_travel,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Setting',
            icon: Icons.settings,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Privacy Policy',
            icon: Icons.policy,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Frequently Asked Questions',
            icon: Icons.quiz_outlined,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          AccountListTileItem(
            title: 'Legal Information',
            icon: Icons.list_alt,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

