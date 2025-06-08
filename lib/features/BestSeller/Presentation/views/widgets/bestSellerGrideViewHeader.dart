// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class bestSellerGrideViewHeader extends StatelessWidget {
  const bestSellerGrideViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).bestSelling,
      style: textStyles(context: context)
          .textstyle16
          .copyWith(fontWeight: FontWeight.bold),
    );
  }
}
