import 'package:flutter/material.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomItemFromEditAndAccountDetails extends StatelessWidget {
  const CustomItemFromEditAndAccountDetails({
    super.key,
    required this.title,
    required this.value,
    this.isEdit = false,
  });

  final String title;

  final String value;
  final bool isEdit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Styles.subTitle1Bold,
        ),
        TextField(
          readOnly: !isEdit ,
          decoration: InputDecoration(
              // contentPadding: EdgeInsets.symmetric(vertical: 0.0),
              hintText: value,
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
              hintStyle: Styles.bodyText1Regular.copyWith(
                color: kGreyColor,
              )),
        ),
      ],
    );
  }
}
