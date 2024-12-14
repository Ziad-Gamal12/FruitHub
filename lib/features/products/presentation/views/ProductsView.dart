import 'package:flutter/material.dart';
import 'package:fruits/features/products/presentation/views/widgets/Productsview_Body.dart';

class Productsview extends StatelessWidget {
  const Productsview({super.key});
  static const routename = "Productsview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProductsviewBody()),
    );
  }
}
