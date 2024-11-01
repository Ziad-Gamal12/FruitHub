// ignore_for_file: file_names

import 'package:flutter/material.dart';

class BestsellerGideviewBestSellerBody extends StatelessWidget {
  const BestsellerGideviewBestSellerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 163 / 214,
            mainAxisSpacing: 8,
            crossAxisSpacing: 16),
        itemBuilder: (context, index) {
          return Container(); //fruit_item();
        });
  }
}
