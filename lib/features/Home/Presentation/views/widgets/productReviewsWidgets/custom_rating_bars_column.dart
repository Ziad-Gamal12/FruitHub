import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Entities/ReviewsEntity.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomStarRatinginfoItem.dart';
import 'package:provider/provider.dart';

class CustomRatingBarsColumn extends StatelessWidget {
  const CustomRatingBarsColumn({super.key});

  @override
  Widget build(BuildContext context) {
    Productsentity product = context.read<Productsentity>();
    return Column(
      children: [
        Customstarratinginfoitem(
            title: "5",
            percent: getPercent(productsreviews: product.reviews!, stars: 5)),
        const SizedBox(height: 8),
        Customstarratinginfoitem(
            title: "4",
            percent: getPercent(productsreviews: product.reviews!, stars: 4)),
        const SizedBox(height: 8),
        Customstarratinginfoitem(
            title: "3",
            percent: getPercent(productsreviews: product.reviews!, stars: 3)),
        const SizedBox(height: 8),
        Customstarratinginfoitem(
            title: "2",
            percent: getPercent(productsreviews: product.reviews!, stars: 2)),
        const SizedBox(height: 8),
        Customstarratinginfoitem(
            title: "1",
            percent: getPercent(productsreviews: product.reviews!, stars: 1)),
      ],
    );
  }

  double getPercent(
      {required double stars, required List<Reviewsentity> productsreviews}) {
    {
      if (productsreviews.isNotEmpty) {
        double totalStars = 0;
        for (int i = 0; i < productsreviews.length; i++) {
          if (productsreviews[i].reating == stars) {
            totalStars += 1;
          }
        }
        return totalStars / productsreviews.length;
      } else {
        return 0.0;
      }
    }
  }
}
