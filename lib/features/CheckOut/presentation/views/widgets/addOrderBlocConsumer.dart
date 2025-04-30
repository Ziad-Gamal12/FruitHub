import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/CheckOut/presentation/manager/add_order_cubit/add_order_cubit.dart';

class Addorderblocconsumer extends StatelessWidget {
  const Addorderblocconsumer(
      {super.key, required this.child, required this.stateChange});
  final Widget child;
  final ValueChanged<AddOrderState> stateChange;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddOrderCubit, AddOrderState>(
        builder: (context, state) {
      stateChange(state);
      return child;
    }, listener: (context, state) {
      if (state is AddOrderSuccess) {
        successdialog(
            context: context,
            SuccessMessage: "تم الطلب بنجاح",
            btnOkOnPress: () {
              Navigator.of(context).pop();
            }).show();
      } else if (state is AddOrderFailure) {
        errordialog(context, state.errmessage).show();
      }
    });
  }
}
