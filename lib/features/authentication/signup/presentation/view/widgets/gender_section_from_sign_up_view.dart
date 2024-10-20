import 'package:clothes_shop_app/constants.dart';
import 'package:clothes_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

enum Gender { male, female }

class GenderSectionFromSignUpView extends StatefulWidget {
  const GenderSectionFromSignUpView({super.key});

  @override
  State<GenderSectionFromSignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<GenderSectionFromSignUpView> {
  Gender? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gender',
          style: Styles.subTitle2Bold.copyWith(
            color: kGreyColor,
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: RadioListTile<Gender>(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Male',
                  style: Styles.bodyText2Regular.copyWith(
                    color: kGreyColor,
                  ),
                ),
                value: Gender.male,
                groupValue: _selectedGender,
                activeColor: kFontColor,
                onChanged: (Gender? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile<Gender>(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Female',
                  style: Styles.bodyText2Regular.copyWith(
                    color: kGreyColor,
                  ),
                ),
                value: Gender.female,
                groupValue: _selectedGender,
                activeColor: kFontColor,
                onChanged: (Gender? value) {
                  setState(() {
                    _selectedGender = value;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
