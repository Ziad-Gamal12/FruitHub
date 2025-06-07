import 'package:flutter/material.dart';
import 'package:fruits/generated/l10n.dart';

class CheckoutstepitemEntity {
  final String title;

  final int index;

  CheckoutstepitemEntity({
    required this.title,
    required this.index,
  });
  static List<CheckoutstepitemEntity> checkoutstepitemEntityList(
      {required BuildContext context}) {
    return [
      CheckoutstepitemEntity(title: S.of(context).shipping, index: 1),
      CheckoutstepitemEntity(title: S.of(context).address, index: 2),
      CheckoutstepitemEntity(title: S.of(context).review, index: 3),
    ];
  }
}
