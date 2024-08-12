import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/Auth/presentation/manager/SignUp/sign_up_cubit.dart';
import 'package:fruits/features/Auth/presentation/views/widgets/SignUpView_body_blocConsumer_builder.dart';

class SignUpViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          Navigator.of(context).pop();
        } else if (state is SignUpFailure) {
          errordialog(context, state.message).show();
        }
      },
      builder: (context, state) {
        return SignUpView_body_blocConsumer_builder(
          state: state,
        );
      },
    );
  }
}
