// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/managers/Custom_reset_password_cubit/Custom_reset_password_cubit.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/CustomResetPasswordViewBodyBlocBuilder.dart';
import 'package:fruits/generated/l10n.dart';

class CustomResetPasswordViewBody extends StatelessWidget {
  const CustomResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CustomResetPasswordCubit, CustomResetPasswordState>(
      listener: (context, state) {
        if (state is CustomResetPasswordSuccess) {
          successdialog(
                  context: context,
                  SuccessMessage: S.of(context).SentResetPasswordSuccess,
                  btnOkOnPress: () {})
              .show();
        } else if (state is CustomResetPasswordFailure) {
          errordialog(context, state.errmessage).show();
        }
      },
      builder: (context, state) {
        return CustomResetPasswordViewBodyBlocBuilder(
          state: state,
        );
      },
    );
  }
}
