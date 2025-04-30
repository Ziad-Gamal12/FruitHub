import 'package:flutter/material.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';
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
        itemCount: CheckoutstepitemEntity.checkoutstepitemEntityList().length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: index == 3 ? 0 : 24),
            child: GestureDetector(
              onTap: () {
                // context.read<ProccessStepsCubit>().changeStep(index);
                // variables.checkoutProccessPageViewController.animateToPage(
                //     index,
                //     duration: const Duration(milliseconds: 500),
                //     curve: Curves.easeInOut);
              },
              child: Checkoutstepitem(
                  isSelected: currentStep >= index ? true : false,
                  entity: CheckoutstepitemEntity.checkoutstepitemEntityList()[
                      index]),
            ),
          );
        },
      ),
    );
  }
}
