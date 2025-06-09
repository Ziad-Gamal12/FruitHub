// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/managers/Custom_reset_password_cubit/Custom_reset_password_cubit.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/core/widgets/Custom_Loading_Widget.dart';
import 'package:fruits/generated/l10n.dart';

class CustomResetPasswordViewBodyBlocBuilder extends StatelessWidget {
  CustomResetPasswordViewBodyBlocBuilder({
    super.key,
    required this.state,
  });
  final CustomResetPasswordState state;
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController resetPasswordemailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: resetPasswordFormKey,
      child: Custom_Loading_Widget(
        isLoading: state is CustomResetPasswordLoading ? true : false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: KHorizentalPadding, vertical: 20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  S.of(context).resetPasswordDescription,
                  style: textStyles(context: context)
                      .textstyle13
                      .copyWith(color: Colors.grey),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(width: 0, height: 20),
              CustomTextFeiled(
                  hintText: "البريد الإلكتروني",
                  obscureText: false,
                  controller: resetPasswordemailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return S.of(context).email;
                    } else if (!value.contains("@")) {
                      return S.of(context).pleaseEnterYourEmail;
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(width: 0, height: 20),
              CustomButton(
                  text: S.of(context).resetPasswordButtonTitle,
                  textColor: Colors.white,
                  onPressed: () {
                    if (resetPasswordFormKey.currentState!.validate()) {
                      context
                          .read<CustomResetPasswordCubit>()
                          .sendResetPasswordEmail(
                              context: context,
                              email: resetPasswordemailController.text);
                    }
                  }),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  S.of(context).loginTitle,
                  style: textStyles(context: context)
                      .textstyle16
                      .copyWith(color: AppColors.MainColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
