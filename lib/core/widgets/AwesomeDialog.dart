// ignore_for_file: non_constant_identifier_names, file_names

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/generated/l10n.dart';

AwesomeDialog errordialog(context, String? error) {
  return AwesomeDialog(
      context: context,
      dialogType: DialogType.error,
      animType: AnimType.bottomSlide,
      title: S.of(context).error,
      desc: error,
      btnOkOnPress: () {},
      btnOkColor: Colors.red);
}

AwesomeDialog successdialog(
    {required context,
    required String? SuccessMessage,
    required void Function()? btnOkOnPress}) {
  return AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.bottomSlide,
      title: S.of(context).Success,
      desc: SuccessMessage,
      btnOkOnPress: btnOkOnPress,
      btnOkColor: Colors.green);
}

AwesomeDialog warningdialog(
  context,
  String? WarningMessage,
  void Function()? btnOkOnPress,
) {
  return AwesomeDialog(
      context: context,
      dialogType: DialogType.warning,
      animType: AnimType.bottomSlide,
      title: S.of(context).waring,
      desc: WarningMessage,
      btnCancel: CustomButton(
        onPressed: () {},
        text: S.of(context).close,
        buttonColor: Colors.white,
        textColor: Colors.black,
        borderSide: const BorderSide(color: Colors.black),
      ),
      btnOkText: S.of(context).verfied);
}

AwesomeDialog infodialog({
  context,
  String? InfoMessage,
  String? btnOkText,
  void Function()? btnOkOnPress,
  void Function()? btnCancelOnPress,
  String? btnCancelText,
}) {
  return AwesomeDialog(
      context: context,
      dialogType: DialogType.info,
      animType: AnimType.bottomSlide,
      title: S.of(context).infoTitle,
      desc: InfoMessage,
      btnOkOnPress: btnOkOnPress,
      btnOkText: btnOkText,
      btnCancelText: btnCancelText,
      btnCancelOnPress: btnCancelOnPress,
      btnCancelColor: Colors.blue,
      btnOkColor: Colors.blue);
}
