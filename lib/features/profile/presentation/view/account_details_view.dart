import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../generated/assets.dart';
import 'widgets/account_section_from_account_details.dart';
import 'widgets/custom_item_from_account_details.dart';

class AccountDetailsView extends StatelessWidget {
  const AccountDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context, title: 'Account details'),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
             AccountSectionFromAccountDetails(),
            SizedBox(
              height: 32,
            ),
            CustomItemFromAccountDetails(
              title: 'User Name',
              value: 'Mohamed Attalla',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromAccountDetails(
              title: 'Email',
              value: 'Mexoattlla123@gmail.com',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromAccountDetails(
              title: 'Phone Number',
              value: '01000000000',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromAccountDetails(
              title: 'Gender',
              value: 'Male',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromAccountDetails(
              title: 'Location',
              value: 'Shoag "العاصمة"',
            ),
          ],
        ),
      ),
    );
  }
}
