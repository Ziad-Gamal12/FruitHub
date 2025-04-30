import 'package:flutter/material.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/CheckOutActiveStep.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/checkout_inActiveStep.dart';

class Checkoutstepitem extends StatelessWidget {
  const Checkoutstepitem(
      {super.key, required this.entity, required this.isSelected});
  final CheckoutstepitemEntity entity;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? Checkoutactivestep(entity: entity)
        : CheckoutInactivestep(
            entity: entity,
          );
  }
}
