import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomRatingInfoSection.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/CustomSendReviewInputs.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:provider/provider.dart';

class ReviewInputAndSummarySection extends StatelessWidget {
  const ReviewInputAndSummarySection({
    super.key,
    required this.addReviewController,
  });

  final TextEditingController addReviewController;

  @override
  Widget build(BuildContext context) {
    Productsentity product = context.read<Productsentity>();
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        CustomSendReviewInputs(addReviewController: addReviewController),
        const SizedBox(
          height: 10,
        ),
        Align(
            alignment: Alignment.centerRight,
            child: Text(
              "${product.reviews!.length} ${S.of(context).reviews}",
              style: textStyles.textstyle13
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w700),
            )),
        const SizedBox(
          height: 10,
        ),
        const Customratinginfosection()
      ],
    );
  }
}
