import 'package:flutter/material.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartviewBody.dart';

class Cartview extends StatelessWidget {
  const Cartview({super.key});
  static const routename = "/Cartview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: CartviewBody()),
    );
  }
}
