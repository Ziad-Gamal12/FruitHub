// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/CustomResetPasswordView.dart';
import 'package:fruits/features/Auth/presentation/views/SignUpView.dart';
import 'package:fruits/generated/l10n.dart';

class Signin_ActionsSection extends StatelessWidget {
  const Signin_ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, CustomResetPasswordView.routeName);
          },
          child: Text(
            S.of(context).forgotPassword,
            style: textStyles(context: context)
                .textstyle13
                .copyWith(color: const Color(0xFF2D9F5D)),
          ),
        ),
        const SizedBox(
          height: 33,
        ),
        CustomButton(
            onPressed: () {
              if (variables.Loginkey.currentState!.validate()) {
                BlocProvider.of<SignInCubit>(context)
                    .signInWithEmailAndPassword(
                        context: context,
                        email: variables.LoginemailController.text,
                        password: variables.LoginPasswordController.text);
              }
            },
            text: S.of(context).loginTitle),
        const SizedBox(
          height: 33,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).dontHaveAccount,
              style: textStyles(context: context)
                  .textstyle16
                  .copyWith(color: const Color(0xFF949D9E)),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, signupview.signupView);
              },
              child: Text(
                S.of(context).createAccount,
                style: textStyles(context: context)
                    .textstyle16
                    .copyWith(color: const Color(0xFF1B5E37)),
              ),
            )
          ],
        ),
      ],
    );
  }
}
