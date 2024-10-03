import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Auth/domain/Repos/AuthRepo.dart';
import 'package:fruits/features/Auth/presentation/manager/SignUp/sign_up_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SignUpViewBody.dart';

class signupview extends StatelessWidget {
  static const signupView = 'signupview';

  const signupview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: const Scaffold(
        body: SafeArea(child: SignUpViewBody()),
      ),
    );
  }
}
