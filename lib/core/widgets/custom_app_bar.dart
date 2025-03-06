import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar customAppbar(BuildContext context,
    {required String title, List<Widget>? actions}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(
        Icons.arrow_back_ios_new_outlined,
        size: 18,
      ),
    ),
    title: Text(
      title,
      style: Styles.subTitle1Bold,
    ),
    actions: actions,
  );
}
