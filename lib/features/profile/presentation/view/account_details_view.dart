import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_app_bar.dart';
import 'widgets/account_section_from_account_details.dart';
import 'widgets/custom_item_from_edit_ and_account_details.dart';

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
            CustomItemFromEditAndAccountDetails(
              title: 'User Name',
              value: 'Mohamed Attalla',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromEditAndAccountDetails(
              title: 'Email',
              value: 'Mexoattlla123@gmail.com',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromEditAndAccountDetails(
              title: 'Phone Number',
              value: '01000000000',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromEditAndAccountDetails(
              title: 'Gender',
              value: 'Male',
            ),
            SizedBox(
              height: 32,
            ),
            CustomItemFromEditAndAccountDetails(
              title: 'Location',
              value: 'Shoag "العاصمة"',
            ),
          ],
        ),
      ),
    );
  }
}
