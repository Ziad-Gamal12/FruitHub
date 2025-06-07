// ignore_for_file: file_names, camel_case_types

import 'package:flutter/widgets.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/Custom_Loading_Widget.dart';
import 'package:fruits/core/widgets/customSeparatedWidget.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/sections.dart/Signin_ActionsSection.dart';
import 'package:fruits/features/Auth/presentation/views/sections.dart/Signin_TextFieledSection.dart';
import 'package:fruits/features/Auth/presentation/views/sections.dart/SocialLoginSection.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/AuthAppBar.dart';
import 'package:fruits/generated/l10n.dart';

class SignInView_body_blocConsumer_builder extends StatelessWidget {
  const SignInView_body_blocConsumer_builder({
    super.key,
    required this.state,
  });
  final SignInState state;
  @override
  Widget build(BuildContext context) {
    return Custom_Loading_Widget(
      isLoading: state is SignInLoading ? true : false,
      child: SingleChildScrollView(
        child: Form(
          key: variables.Loginkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthAppBar(
                  appBarTitle: S.of(context).loginTitle,
                  onTapIcon: () {
                    Navigator.of(context).pop();
                  },
                ),
                const Signin_TextFieledSection(),
                const SizedBox(
                  height: 16,
                ),
                const Signin_ActionsSection(),
                const SizedBox(
                  height: 33,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const customSeparatedWidget(),
                    const SizedBox(
                      width: 17,
                    ),
                    Text(
                      S.of(context).or,
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    const customSeparatedWidget(),
                  ],
                ),
                const SizedBox(
                  height: 21,
                ),
                const SocialLoginSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
