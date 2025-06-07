import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CheckOutAddressInputs.dart';
import 'package:fruits/generated/l10n.dart';

class Adressviewbody extends StatefulWidget {
  const Adressviewbody({super.key});

  @override
  State<Adressviewbody> createState() => _AdressviewbodyState();
}

class _AdressviewbodyState extends State<Adressviewbody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isAddressSaved = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 24,
        ),
        Form(key: formKey, child: const CheckOutAddressInputs()),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            SizedBox(
              height: 42,
              width: 42,
              child: FittedBox(
                child: Switch(
                    inactiveTrackColor: const Color(0xFFF9FAFA),
                    inactiveThumbColor: Colors.grey,
                    dragStartBehavior: DragStartBehavior.start,
                    activeColor: Colors.white,
                    activeTrackColor: AppColors.MainColor,
                    value: isAddressSaved,
                    onChanged: (value) {
                      isAddressSaved = value;
                      setState(() {});
                    }),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              S.of(context).SaveAddress,
              style: textStyles.textstyle13.copyWith(
                  color: const Color(0xff949D9E), fontWeight: FontWeight.w600),
            ),
          ],
        ),
        const Flexible(
            child: SizedBox(
          height: 64,
        )),
        CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.read<ProccessStepsCubit>().changeStep();
                variables.checkoutProccessPageViewController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
                formKey.currentState!.save();
              }
            },
            text: S.of(context).next),
      ],
    );
  }
}
