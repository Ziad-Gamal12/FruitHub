import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/AddressSummarySection.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/OrderSummarySection.dart';

class Ordersummaryviewbody extends StatefulWidget {
  const Ordersummaryviewbody({super.key});

  @override
  State<Ordersummaryviewbody> createState() => _OrdersummaryviewbodyState();
}

class _OrdersummaryviewbodyState extends State<Ordersummaryviewbody> {
  AddOrderState state = AddOrderInitial();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddOrderCubit, AddOrderState>(builder: (context, state) {
      return Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const OrderSummarySection(),
          const SizedBox(
            height: 16,
          ),
          const AddressSummarySection(),
          const Flexible(
              child: SizedBox(
            height: 50,
          )),
          state is AddOrderLoading
              ? const CircularProgressIndicator(
                  color: AppColors.MainColor,
                )
              : CustomButton(
                  onPressed: () {
                    log(context.read<Orderentity>().isPaidOnline.toString());
                    if (variables.currentShippingOptionIndex == 0) {
                      context.read<ProccessStepsCubit>().changeStep();
                      variables.checkoutProccessPageViewController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    } else {
                      context
                          .read<AddOrderCubit>()
                          .addOrder(orderEntity: context.read<Orderentity>());
                    }
                  },
                  text: "تأكيد الطلب")
        ],
      );
    });
  }
}
