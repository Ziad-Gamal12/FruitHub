import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/CheckOutStepItem.dart';

class CheckoutStepsListView extends StatelessWidget {
  const CheckoutStepsListView({
    super.key,
    required this.currentStep,
  });
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 344 / 24,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:
            CheckoutstepitemEntity.checkoutstepitemEntityList(context: context)
                .length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 3 ? 0 : 24),
            child: GestureDetector(
              onTap: () {
                if (index < currentStep) {
                  context
                      .read<ProccessStepsCubit>()
                      .changeStep(isIcrease: false, stepchangenumber: index);
                  variables.checkoutProccessPageViewController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut);
                }
              },
              child: Checkoutstepitem(
                  isSelected: currentStep >= index ? true : false,
                  entity: CheckoutstepitemEntity.checkoutstepitemEntityList(
                      context: context)[index]),
            ),
          );
        },
      ),
    );
  }
}
