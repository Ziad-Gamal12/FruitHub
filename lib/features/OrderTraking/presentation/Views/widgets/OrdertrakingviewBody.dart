import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/widgets/CustomOrderInfo.dart';

class Ordertrakingviewbody extends StatelessWidget {
  const Ordertrakingviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          Customorderinfo(),
        ],
      ),
    );
  }
}
