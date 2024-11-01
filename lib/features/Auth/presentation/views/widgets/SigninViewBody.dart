// ignore_for_file: file_names, camel_case_types
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SignInView_body_blocConsumer_builder.dart';
import 'package:fruits/features/Home/Presentation/views/homeView.dart';

class signinViewBody extends StatelessWidget {
  const signinViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccess) {
          Navigator.of(context).pushReplacementNamed(Homeview.homeView);
        } else if (state is SignInFailure) {
          errordialog(context, state.message).show();
        }
      },
      builder: (context, state) {
        return SignInView_body_blocConsumer_builder(
          state: state,
        );
      },
    );
  }
}
