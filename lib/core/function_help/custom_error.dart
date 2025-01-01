import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

void customError(BuildContext context, {required String massage}) {
  AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.error,
    title: "Error",
    desc: massage,
    btnOk: CustomButton(
        title: "Ok",
        onPressed: () {
          Navigator.pop(context);
        }),
  ).show();
}

void customSuccess(BuildContext context, {required String massage}) {
  AwesomeDialog(
    context: context,
    animType: AnimType.scale,
    dialogType: DialogType.success,
    title: "Success",
    desc: massage,
    btnOk: CustomButton(
        title: "Ok",
        onPressed: () {
          Navigator.pop(context);
        }),
  ).show();
}
