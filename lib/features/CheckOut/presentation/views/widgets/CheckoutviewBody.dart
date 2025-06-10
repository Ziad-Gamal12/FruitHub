// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/AddOrderSuccessView.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/AdressViewBody.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/CheckoutStepsListView.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/orderSummary/OrderSummaryViewBOdy.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/shipping/ShippingViewBody.dart';

class CheckoutviewBody extends StatefulWidget {
  const CheckoutviewBody({
    super.key,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<CheckoutviewBody> createState() => _CheckoutviewBodyState();
}

class _CheckoutviewBodyState extends State<CheckoutviewBody> {
  @override
  Widget build(BuildContext context) {
    Orderentity order = context.read<Orderentity>();
    List<Widget> proccess = [
      const Shippingviewbody(),
      Adressviewbody(
        checkOutScaffoldKey: widget.scaffoldKey,
      ),
      const Ordersummaryviewbody(),
    ];
    return BlocListener<AddOrderCubit, AddOrderState>(
      listener: (context, state) {
        if (state is AddOrderSuccess) {
          Navigator.of(context).pushReplacementNamed(
              AddrOderSuccessView.routeName,
              arguments: context.read<Orderentity>());
        } else if (state is AddOrderFailure) {
          showSnackBar(
              message: state.errmessage,
              context: context,
              color: Colors.red,
              textColor: Colors.white);
        }
      },
      child: BlocBuilder<ProccessStepsCubit, ProccessStepsState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                CheckoutStepsListView(
                  currentStep: context.read<ProccessStepsCubit>().currentStep,
                ),
                Expanded(
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: variables.checkoutProccessPageViewController,
                    children: proccess.map((e) => e).toList(),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
