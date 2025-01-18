import 'package:flutter/material.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/CheckoutviewBody.dart';

class Checkoutview extends StatelessWidget {
  const Checkoutview({super.key});
  static const routeName = 'checkout';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        appBartitle: "الدفع",
      ),
      body: CheckoutviewBody(),
    );
  }
}
