import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Home/Presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class CustomRatingSummary extends StatelessWidget {
  const CustomRatingSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              context
                  .read<ReviewsCubit>()
                  .getproductStarRate(product: context.read<Productsentity>())
                  .toString(),
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            SvgPicture.asset(Assets.assetsImagesStarIcon),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          "${context.read<ReviewsCubit>().calculateOverallReviewPercentage(context.read<Productsentity>().reviews!.map((e) => e.reating.round()).toList())}%",
          style: textStyles(context: context)
              .textstyle16
              .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(
          S.of(context).Recommended,
          style: textStyles(context: context)
              .textstyle11
              .copyWith(fontWeight: FontWeight.w400, color: Colors.black),
        ),
      ],
    );
  }
}
