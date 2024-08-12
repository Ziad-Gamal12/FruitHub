// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/SignUpView.dart';

class Signin_ActionsSection extends StatelessWidget {
  const Signin_ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "نسيت كلمة المرور؟",
          style:
              textStyles.textstyle13.copyWith(color: const Color(0xFF2D9F5D)),
        ),
        const SizedBox(
          height: 33,
        ),
        CustomButton(
            onPressed: () {
              if (variables.Loginkey.currentState!.validate()) {
                BlocProvider.of<SignInCubit>(context)
                    .signInWithEmailAndPassword(
                        email: variables.LoginemailController.text,
                        password: variables.LoginPasswordController.text);
              }
            },
            text: "تسجيل دخول"),
        const SizedBox(
          height: 33,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "لا تمتلك حساب؟",
              style: textStyles.textstyle16
                  .copyWith(color: const Color(0xFF949D9E)),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, signupview.signupView);
              },
              child: Text(
                "قم بإنشاء حساب",
                style: textStyles.textstyle16
                    .copyWith(color: const Color(0xFF1B5E37)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
