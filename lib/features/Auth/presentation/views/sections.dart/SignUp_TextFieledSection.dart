// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/generated/l10n.dart';

class SignUp_TextFieledSection extends StatefulWidget {
  const SignUp_TextFieledSection({super.key});

  @override
  State<SignUp_TextFieledSection> createState() =>
      _SignUp_TextFieledSectionState();
}

class _SignUp_TextFieledSectionState extends State<SignUp_TextFieledSection> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFeiled(
          controller: variables.signUpUserNameController,
          hintText: S.of(context).fullName,
          validator: (value) {
            if (value!.isEmpty || value == "") {
              return S.of(context).pleaseEnterYourFullName;
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFeiled(
          controller: variables.SignupemailController,
          hintText: S.of(context).email,
          validator: (value) {
            if (value!.isEmpty || value == "") {
              return S.of(context).pleaseEnterYourEmail;
            }
            return null;
          },
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFeiled(
            controller: variables.SignupPasswordController,
            hintText: S.of(context).password,
            validator: (value) {
              if (value!.isEmpty || value == "") {
                return S.of(context).pleaseEnterYourPassword;
              }
              return null;
            },
            obscureText: obscureText,
            keyboardType: TextInputType.visiblePassword,
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
