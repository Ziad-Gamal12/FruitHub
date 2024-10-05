import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/customBestSellerAppBar.dart';

class bestSellerView_body extends StatelessWidget {
  const bestSellerView_body({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          Custombestsellerappbar()
        ],
      ),
    );
  }
}
