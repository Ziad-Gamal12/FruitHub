// ignore: file_names
// ignore_for_file: camel_case_types, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/core/widgets/Custom_Loading_Widget.dart';
import 'package:fruits/features/Auth/presentation/manager/SignUp/sign_up_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/sections.dart/SignUp_TextFieledSection.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/AuthAppBar.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/TermsAndConditions.dart';
import 'package:fruits/generated/l10n.dart';

// ignore: must_be_immutable
class SignUpView_body_blocConsumer_builder extends StatelessWidget {
  final SignUpState state;
  const SignUpView_body_blocConsumer_builder({
    super.key,
    required this.state,
  });
  @override
  Widget build(BuildContext context) {
    return Custom_Loading_Widget(
      isLoading: state is SignUpLoading ? true : false,
      child: SingleChildScrollView(
        child: Form(
            key: variables.SignUpkey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
              child: Column(
                children: [
                  AuthAppBar(
                      appBarTitle: S.of(context).newAccount,
                      onTapIcon: () {
                        Navigator.of(context).pop();
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  const SignUp_TextFieledSection(),
                  const SizedBox(
                    height: 16,
                  ),
                  TermsAndConditions(
                    onChanged: (value) {
                      context.read<SignUpCubit>().isTermsAccepted = value;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.29,
                  ),
                  CustomButton(
                      onPressed: () {
                        if (variables.SignUpkey.currentState!.validate()) {
                          bool isTermsAccepted =
                              context.read<SignUpCubit>().isTermsAccepted;
                          if (!isTermsAccepted) {
                            errordialog(context, S.of(context).pleasAcceptTerms)
                                .show();
                          } else {
                            BlocProvider.of<SignUpCubit>(context).signUp(
                              context: context,
                              email: variables.SignupemailController.text,
                              password: variables.SignupPasswordController.text,
                              name: variables.signUpUserNameController.text,
                            );
                          }
                        }
                      },
                      text: S.of(context).createAccount),
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.of(context).alreadyHaveAccount,
                        style: textStyles(context: context)
                            .textstyle16
                            .copyWith(color: const Color(0xFF949D9E)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          S.of(context).loginTitle,
                          style: textStyles(context: context)
                              .textstyle16
                              .copyWith(color: const Color(0xFF1B5E37)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
