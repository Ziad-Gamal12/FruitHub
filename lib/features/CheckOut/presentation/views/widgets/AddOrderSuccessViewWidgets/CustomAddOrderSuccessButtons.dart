import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/OrderTrakingView.dart';

class CustomAddOrderSuccessButtons extends StatelessWidget {
  const CustomAddOrderSuccessButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomButton(
          onPressed: () {
            Navigator.pushNamed(context, Ordertrakingview.routeName,
                arguments: context.read<Orderentity>());
          },
          text: "تتبع الطلب"),
      const SizedBox(
        height: 16,
      ),
      Text(
        "الرئيسية",
        style: textStyles.textstyle16.copyWith(color: AppColors.MainColor),
      ),
    ]);
  }
}
