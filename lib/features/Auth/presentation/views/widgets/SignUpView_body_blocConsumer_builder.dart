// ignore: file_names
// ignore_for_file: camel_case_types

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
                      appBarTitle: "حساب جديد",
                      onTapIcon: () {
                        Navigator.of(context).pop();
                      }),
                  const SizedBox(
                    height: 24,
                  ),
                  SignUp_TextFieledSection(),
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
                            errordialog(context,
                                    "يجب عليك الموافقة على الشروط والاحكام")
                                .show();
                          } else {
                            BlocProvider.of<SignUpCubit>(context).signUp(
                                email: variables.SignupemailController.text,
                                password:
                                    variables.SignupPasswordController.text,
                                name: variables.signUpUserNameController.text);
                          }
                        }
                      },
                      text: "إنشاء حساب جديد"),
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "تمتلك حساب بالفعل؟ ",
                        style: textStyles.textstyle16
                            .copyWith(color: const Color(0xFF949D9E)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "تسجيل دخول",
                          style: textStyles.textstyle16
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
