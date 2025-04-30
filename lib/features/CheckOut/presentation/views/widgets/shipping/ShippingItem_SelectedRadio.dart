import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';

class ShippingitemSelectedradio extends StatelessWidget {
  const ShippingitemSelectedradio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const CircleAvatar(
        backgroundColor: AppColors.MainColor,
      ),
    );
  }
}
