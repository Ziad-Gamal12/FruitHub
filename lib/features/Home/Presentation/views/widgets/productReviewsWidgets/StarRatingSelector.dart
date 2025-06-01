import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/pickReviewStarsRatingOptionsList.dart';

class StarRatingSelector extends StatelessWidget {
  final ValueChanged<int> onSelected;

  const StarRatingSelector({super.key, required this.onSelected});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Pickreviewstarsratingoptionslist(
        onStarSelected: onSelected,
      ),
    );
  }
}
