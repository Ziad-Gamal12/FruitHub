import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/OrdertrakingviewBody.dart';
import 'package:provider/provider.dart';

class Ordertrakingview extends StatelessWidget {
  const Ordertrakingview({super.key, required this.order});
  static const String routeName = '/Ordertrakingview';
  final Orderentity order;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: "تتبع الطلب",
      ),
      body: Provider.value(value: order, child: const Ordertrakingviewbody()),
    );
  }
}
