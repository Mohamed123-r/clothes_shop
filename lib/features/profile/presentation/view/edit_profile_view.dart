import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_button.dart';
import 'widgets/account_section_from_account_details.dart';
import 'widgets/custom_item_from_edit_ and_account_details.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Row(
          children: [
            SecondCustomButton(
              isMinWidth: true,
              onPressed: () {},
              color: kGreyColor,
              title: 'Cancel',
              child: const SizedBox(),
            ),
            const SizedBox(
              width: 16,
            ),
            SecondCustomButton(
              isMinWidth: true,
              onPressed: () {},
              title: 'Save',
              child: const SizedBox(),
            ),
          ],
        ),
      ),
      appBar: customAppbar(context, title: 'Edit Profile'),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AccountSectionFromAccountDetails(),
              SizedBox(
                height: 32,
              ),
              CustomItemFromEditAndAccountDetails(
                title: 'User Name',
                value: 'Mohamed Attalla',
                isEdit: true,
              ),
              SizedBox(
                height: 32,
              ),
              CustomItemFromEditAndAccountDetails(
                title: 'Email',
                value: 'Mexoattlla123@gmail.com',
                isEdit: true,
              ),
              SizedBox(
                height: 32,
              ),
              CustomItemFromEditAndAccountDetails(
                title: 'Phone Number',
                value: '01000000000',
                isEdit: true,
              ),
              SizedBox(
                height: 32,
              ),
              CustomItemFromEditAndAccountDetails(
                title: 'Gender',
                value: 'Male',
                isEdit: true,
              ),
              SizedBox(
                height: 32,
              ),
              CustomItemFromEditAndAccountDetails(
                title: 'Location',
                value: 'Shoag "العاصمة"',
                isEdit: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
