// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    );
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            prefixIcon: SizedBox(
              height: 20,
              width: 20,
              child: Center(
                  child: SvgPicture.asset(Assets.assetsImagesSearchIcon)),
            ),
            hintText: S.of(context).searchHint,
            hintStyle: textStyles(context: context).textstyle13.copyWith(
                fontWeight: FontWeight.w400, color: const Color(0xff949D9E)),
            filled: true,
            fillColor: Colors.white,
            enabledBorder: outlineInputBorder,
            focusedBorder: outlineInputBorder,
            border: outlineInputBorder),
      ),
    );
  }
}
