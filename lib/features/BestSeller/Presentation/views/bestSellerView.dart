import 'package:flutter/material.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/bestSellerView_body.dart';

class bestSellerView extends StatelessWidget {
  const bestSellerView({super.key});
  static const routeName = 'bestSellerView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: bestSellerView_body()),
    );
  }
}