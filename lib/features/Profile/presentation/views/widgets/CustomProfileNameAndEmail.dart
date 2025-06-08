import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomProfileUserNameAndEmail extends StatelessWidget {
  const CustomProfileUserNameAndEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(
          getUserData().name,
          style: textStyles(context: context)
              .textstyle16
              .copyWith(fontWeight: FontWeight.w700, color: Colors.black),
        ),
        subtitle: Text(
          getUserData().email,
          style: textStyles(context: context)
              .textstyle13
              .copyWith(fontWeight: FontWeight.w400, color: Colors.grey),
        ),
      ),
    );
  }
}
