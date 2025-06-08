import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/widgets/CustomOrderInfo.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/domain/orderStatusItemEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/orderStatusListView.dart';
import 'package:provider/provider.dart';

class Ordertrakingviewbody extends StatelessWidget {
  const Ordertrakingviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          Customorderinfo(
            order: context.read<Orderentity>(),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Orderstatuslistview(
                  statusList:
                      Orderstatusitementity.orderStatus(context: context))),
        ],
      ),
    );
  }
}
