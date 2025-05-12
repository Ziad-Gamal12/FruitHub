import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/OrderTraking/domain/orderStatusItemEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomOrderInfo.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/orderStatusListView.dart';

class Ordertrakingviewbody extends StatelessWidget {
  const Ordertrakingviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          const Customorderinfo(),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Orderstatuslistview(
                  statusList: Orderstatusitementity.orderStatus()))
        ],
      ),
    );
  }
}
