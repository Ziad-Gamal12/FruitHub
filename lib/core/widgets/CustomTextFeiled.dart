// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class CustomTextFeiled extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  Widget? suffix;
  final bool obscureText;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  void Function(String?)? onSaved;
  CustomTextFeiled(
      {super.key,
      required this.controller,
      required this.hintText,
      this.suffix,
      this.onSaved,
      required this.validator,
      required this.obscureText,
      required this.keyboardType});
  @override
  Widget build(BuildContext context) {
    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xFFE6E9E9),
        width: 1,
      ),
      borderRadius: BorderRadius.circular(4),
    );
    return TextFormField(
      onSaved: onSaved,
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: textStyles.textstyle13.copyWith(
              fontWeight: FontWeight.w700, color: const Color(0xff949D9E)),
          filled: true,
          fillColor: const Color(0xFFF9FAFA),
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          border: outlineInputBorder),
    );
  }
}
