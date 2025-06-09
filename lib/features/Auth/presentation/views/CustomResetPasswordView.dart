// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/managers/Custom_reset_password_cubit/Custom_reset_password_cubit.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/CustomResetPasswordViewBody.dart';
import 'package:fruits/generated/l10n.dart';

class CustomResetPasswordView extends StatelessWidget {
  const CustomResetPasswordView({super.key});
  static const routeName = '/teacherResetPasswordView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CustomResetPasswordCubit(authrepo: getIt<AuthRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(
          appBartitle: S.of(context).resetPasswordTitle,
          isBack: true,
        ),
        body: const CustomResetPasswordViewBody(),
      ),
    );
  }
}
