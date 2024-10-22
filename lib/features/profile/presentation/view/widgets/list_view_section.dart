import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/app_router.dart';
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
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                AppRouter.router(
                  const RouteSettings(name: AppRouter.kAccountDerailsView),
                ),
              );
            },
            child: const AccountListTileItem(
              title: 'Account details',
              icon: Icons.list_alt,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Favorite',
            icon: Icons.favorite_border,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Notification',
            icon: Icons.notifications_none,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Payment',
            icon: Icons.payment_outlined,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'My Orders',
            icon: Icons.card_travel,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Setting',
            icon: Icons.settings,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Privacy Policy',
            icon: Icons.policy,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Frequently Asked Questions',
            icon: Icons.quiz_outlined,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const AccountListTileItem(
            title: 'Legal Information',
            icon: Icons.list_alt,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Divider(
              height: 0,
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
