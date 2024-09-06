import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';

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
          hintText: "الاسم كامل",
          validator: (value) {
            if (value!.isEmpty || value == "") {
              return "الرجاء ادخال الاسم كامل";
            } else if (!RegExp(
                    r"^[أ-ىa-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~@]+")
                .hasMatch(value)) {
              return "الرجاء ادخال الاسم كامل صالح";
            } else if (value.startsWith(" ")) {
              return "لا يجب ان يحتوى الاسم كامل على فارغ";
            } else {
              return null;
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
            } else if (!RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value)) {
              return "الرجاء ادخال بريد الإلكتروني صالح";
            } else if (value.contains(" ")) {
              return "لا يجب ان يحتوى البريد الإلكتروني على فارغ";
            } else {
              return null;
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
              } else if (value.length < 8) {
                return "يجب ان تحتوى كلمة المرور على 8 حروف على الاقل";
              } else if (!RegExp(
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~@]+")
                  .hasMatch(value)) {
                return "الرجاء ادخال كلمة المرور صالح";
              } else if (value.contains(" ")) {
                return "لا يجب ان تحتوى كلمة المرور على فارغ";
              } else {
                return null;
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
                  color: const Color(0xff949D9E),
                ),
              ),
            ))
      ],
    );
  }
}
