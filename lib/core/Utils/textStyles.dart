// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/responsiveText.dart';

class textStyles {
  final BuildContext context;
  TextStyle get textstyle23 => TextStyle(
        fontSize: getresposiveTet(context: context, basesize: 23),
        fontWeight: FontWeight.w700,
      );
  TextStyle get textstyle19 => TextStyle(
        fontSize: getresposiveTet(context: context, basesize: 19),
        fontWeight: FontWeight.w700,
      );
  TextStyle get textstyle16 => TextStyle(
        fontSize: getresposiveTet(context: context, basesize: 16),
        fontWeight: FontWeight.w600,
      );
  TextStyle get textstyle13 => TextStyle(
        fontSize: getresposiveTet(context: context, basesize: 13),
        fontWeight: FontWeight.w600,
      );
  TextStyle get textstyle11 => TextStyle(
        fontSize: getresposiveTet(context: context, basesize: 11),
        fontWeight: FontWeight.w600,
      );

  textStyles({required this.context});
}
