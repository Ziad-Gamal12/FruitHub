import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/domain/ShippingOptionsEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/shipping/Shipping_option_Item.dart';

class Shippingviewbody extends StatefulWidget {
  const Shippingviewbody({
    super.key,
  });

  @override
  State<Shippingviewbody> createState() => _ShippingviewbodyState();
}

class _ShippingviewbodyState extends State<Shippingviewbody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Column(
          children: Shippingoptionsentity.optionsList(context)
              .asMap()
              .entries
              .map((entry) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: InkWell(
                        onTap: () {
                          variables.currentShippingOptionIndex = entry.key;
                          setState(() {});
                        },
                        child: ShippingOptionItem(
                          shippingoptionsentity: entry.value,
                          isSelected:
                              variables.currentShippingOptionIndex == entry.key,
                        )),
                  ))
              .toList(),
        ),
        const Flexible(
          child: SizedBox(
            height: 100,
          ),
        ),
        CustomButton(
            onPressed: () {
              if (variables.currentShippingOptionIndex != null) {
                context.read<ProccessStepsCubit>().changeStep();
                variables.checkoutProccessPageViewController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
                context.read<Orderentity>().isPaidOnline =
                    variables.currentShippingOptionIndex == 0 ? true : false;
              } else {
                errordialog(context, "الرجاء اختيار خيار الشحن").show();
              }
            },
            text: "التالي"),
      ],
    );
  }
}
