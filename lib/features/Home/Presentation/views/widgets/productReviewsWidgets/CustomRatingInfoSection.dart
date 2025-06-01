import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/custom_rating_bars_column.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/custom_rating_summary.dart';

class Customratinginfosection extends StatelessWidget {
  const Customratinginfosection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 257, child: CustomRatingBarsColumn()),
        SizedBox(width: 22),
        Expanded(flex: 63, child: CustomRatingSummary()),
      ],
    );
  }
}
