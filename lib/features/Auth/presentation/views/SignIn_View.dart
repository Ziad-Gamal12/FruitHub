// ignore_for_file: file_names, constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
import 'package:fruits/features/Auth/presentation/manager/SignIn/sign_in_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SigninViewBody.dart';

class SignIn_View extends StatelessWidget {
  const SignIn_View({super.key});

  static const LoginViewRoute = "LoginView";
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: const Scaffold(body: SafeArea(child: signinViewBody())),
    );
  }
}
