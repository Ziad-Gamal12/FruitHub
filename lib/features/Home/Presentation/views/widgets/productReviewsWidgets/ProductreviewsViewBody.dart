// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomReviewsSliverList.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/ReviewInputAndSummarySection.dart';

class ProductreviewsViewBody extends StatelessWidget {
  ProductreviewsViewBody({super.key});
  TextEditingController addReviewController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ReviewInputAndSummarySection(
                addReviewController: addReviewController),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const CustomReviewsSliverList()
        ],
      ),
    );
  }
}
