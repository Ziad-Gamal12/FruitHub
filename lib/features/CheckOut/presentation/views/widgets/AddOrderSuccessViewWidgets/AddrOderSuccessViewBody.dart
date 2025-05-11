import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/AddOrderSuccessViewWidgets/CustomAddOrderSuccessButtons.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/AddOrderSuccessViewWidgets/CustomAddOrderSuccessOrderInfo.dart';
import 'package:provider/provider.dart';

class Addrodersuccessviewbody extends StatelessWidget {
  const Addrodersuccessviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    Orderentity order = context.read<Orderentity>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          CustomAddOrderSuccessOrderInfo(order: order),
          const Spacer(
            flex: 4,
          ),
          const CustomAddOrderSuccessButtons(),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }
}
