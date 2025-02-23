import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:clothes_shop_app/core/widgets/custom_app_bar.dart';
import 'package:clothes_shop_app/features/profile/presentation/manage/cubits/profile_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/account_section.dart';
import 'widgets/list_view_section.dart';

class AccountView extends StatefulWidget {
  const AccountView({super.key});

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  void initState() {

    context.read<ProfileCubit>().getProfileDataDetails();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppbar(context, title: 'Your Profile'),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AccountSection(),
              const ListViewSection(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Switch(
                      value: false,
                      onChanged: (value) {},
                      inactiveThumbColor: kDarkGreyColor,
                      inactiveTrackColor: kWhiteColor,
                      activeColor: kWhiteColor,
                      activeTrackColor: kDarkGreyColor,
                    ),
                    Text(
                      'Darkmood',
                      style: Styles.bodyText1Regular.copyWith(
                        color: kDarkGreyColor,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.logout_outlined)),
                    Text(
                      'Sign Out',
                      style: Styles.bodyText1Regular.copyWith(
                        color: kDarkGreyColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
