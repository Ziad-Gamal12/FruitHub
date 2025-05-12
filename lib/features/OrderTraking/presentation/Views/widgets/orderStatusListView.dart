import 'package:flutter/material.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/domain/orderStatusItemEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomCard.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomOrderStatusItem.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/orderstatusproccessLine.dart';
import 'package:provider/provider.dart';

class Orderstatuslistview extends StatelessWidget {
  const Orderstatuslistview({super.key, required this.statusList});
  final List<Orderstatusitementity> statusList;

  @override
  Widget build(BuildContext context) {
    Orderentity order = context.read<Orderentity>();
    return Customcard(
      child: Stack(
        children: [
          const orderstatusproccessLine(),
          Column(
            children: statusList
                .asMap()
                .entries
                .map((e) => Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: e.key == 3 ? 0 : 20),
                        child: Customorderstatusitem(
                          status: e.value,
                          isActive:
                              getStatusIndex(status: order.status) >= e.key,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }

  int getStatusIndex({required String status}) {
    String lowercaseStatus = status.toLowerCase();
    if (lowercaseStatus == "pending") return 0;
    if (lowercaseStatus == "cancelled") return 0;
    if (lowercaseStatus == "preparing") return 1;
    if (lowercaseStatus == "shipped") return 2;
    if (lowercaseStatus == "delivered") return 3;
    return -1;
  }
}
