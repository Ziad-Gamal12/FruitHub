import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Paying/DefaultCardCheckBox.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Paying/PayingCardInputs.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Paying/PayingOptionListViewTitle.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Paying/PayingOptionsListView.dart';

class Payingviewbody extends StatelessWidget {
  Payingviewbody({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 24,
        ),
        const Payingoptionlistviewtitle(),
        const SizedBox(
          height: 13,
        ),
        const PayingOptionsListView(),
        const SizedBox(
          height: 16,
        ),
        Form(key: formKey, child: const PayingCardInputs()),
        const SizedBox(
          height: 16,
        ),
        Defaultcardcheckbox(
          onchanged: (value) {},
        ),
        const Flexible(
            child: SizedBox(
          height: 60,
        )),
        CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<ProccessStepsCubit>().changeStep();
                variables.checkoutProccessPageViewController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              }
            },
            text: "دفع الان")
      ],
    );
  }
}
