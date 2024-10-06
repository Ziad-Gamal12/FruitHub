import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';

class SignUp_TextFieledSection extends StatefulWidget {
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
          hintText: "الاسم كامل",
          validator: (value) {
            if (value!.isEmpty || value == "") {
              return "الرجاء ادخال الاسم كامل";
            }
          },
          obscureText: false,
          keyboardType: TextInputType.name,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFeiled(
          controller: variables.SignupemailController,
          hintText: "البريد الإلكتروني",
          validator: (value) {
            if (value!.isEmpty || value == "") {
              return "الرجاء ادخال البريد الإلكتروني";
            }
          },
          obscureText: false,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFeiled(
            controller: variables.SignupPasswordController,
            hintText: "كلمة المرور",
            validator: (value) {
              if (value!.isEmpty || value == "") {
                return "الرجاء ادخال كلمة المرور";
              }
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
                  color: Color(0xff949D9E),
                ),
              ),
            ))
      ],
    );
  }
}
