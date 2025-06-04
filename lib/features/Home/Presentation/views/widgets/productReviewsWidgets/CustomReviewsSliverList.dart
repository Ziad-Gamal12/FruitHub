import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Entities/ReviewsEntity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomNoReviewsWidget.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomReviewsListItem.dart';
import 'package:provider/provider.dart';

class CustomReviewsSliverList extends StatelessWidget {
  const CustomReviewsSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    List<Reviewsentity> reviews = context.read<Productsentity>().reviews!;
    return reviews.isEmpty
        ? const SliverToBoxAdapter(
            child: CustomNoReviewsWidget(),
          )
        : SliverList.builder(
            itemCount: reviews.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: index == reviews.length - 1 ? 0 : 16),
                child: Customreviewslistitem(reviewentity: reviews[index]),
              );
            },
          );
  }
}
