// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/generated/l10n.dart';

class Signin_TextFieledSection extends StatefulWidget {
  const Signin_TextFieledSection({super.key});

  @override
  State<Signin_TextFieledSection> createState() =>
      _Signin_TextFieledSectionState();
}

class _Signin_TextFieledSectionState extends State<Signin_TextFieledSection> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeiled(
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            validator: (value) {
              if (value!.isEmpty || value == "") {
                return S.of(context).pleaseEnterYourEmail;
              }
              return null;
            },
            controller: variables.LoginemailController,
            hintText: S.of(context).email),
        const SizedBox(
          height: 16,
        ),
        CustomTextFeiled(
            keyboardType: TextInputType.visiblePassword,
            obscureText: obscureText,
            validator: (value) {
              if (value!.isEmpty || value == "") {
                return S.of(context).pleaseEnterYourPassword;
              }
              return null;
            },
            controller: variables.LoginPasswordController,
            hintText: S.of(context).password,
            suffix: Padding(
              padding: const EdgeInsets.only(left: 33),
              child: IconButton(
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
                icon: Icon(
                  obscureText ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xff949D9E),
                ),
              ),
            ))
      ],
    );
  }
}
