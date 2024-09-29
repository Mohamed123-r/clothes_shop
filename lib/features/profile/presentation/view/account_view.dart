import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'widgets/account_list_tile_item.dart';
import 'widgets/account_section.dart';
import 'widgets/list_view_section.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(context, title: 'Your Profile'),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              AccountSection(),
              ListViewSection(),
            ],
          ),
        ));
  }
}

