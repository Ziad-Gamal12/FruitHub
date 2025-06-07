import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Entities/ReviewsEntity.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Helper_Funcitions/showSnackBar.dart';
import 'package:fruits/features/Home/Presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/SendReviewTextField.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/StarRatingSelector.dart';
import 'package:fruits/generated/l10n.dart';

class CustomSendReviewInputs extends StatelessWidget {
  CustomSendReviewInputs({super.key, required this.addReviewController});

  final TextEditingController addReviewController;

  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewsCubit, ReviewsState>(
      listener: (context, state) {
        if (state is AddReviewSuccess) {
          addReviewController.clear();
          showSnackBar(
            message: S.of(context).reviewAdded,
            context: context,
            color: Colors.green,
            textColor: Colors.white,
          );
        } else if (state is AddReviewFailure) {
          showSnackBar(
            message: state.errMessage,
            context: context,
            color: Colors.red,
            textColor: Colors.white,
          );
        }
      },
      builder: (context, state) {
        return Column(
          children: [
            SendReviewTextField(
              controller: addReviewController,
              isLoading: state is AddReviewLoading,
              onSend: () {
                addReview(context, addReviewController);
              },
            ),
            const SizedBox(height: 10),
            StarRatingSelector(
              onSelected: (value) {
                rating = value;
              },
            ),
          ],
        );
      },
    );
  }

  void addReview(
      BuildContext context, TextEditingController addReviewController) {
    if (addReviewController.text.isEmpty) {
      showSnackBar(message: S.of(context).enterReview, context: context);
      return;
    }

    if (rating == 0) {
      showSnackBar(message: S.of(context).rateProduct, context: context);
      return;
    }

    Reviewsentity review = Reviewsentity(
      imageUrl:
          "https://firebasestorage.googleapis.com/v0/b/fruithub-973f6.appspot.com/o/Profile_Picture.png?alt=media&token=ee6ba1fc-d5d2-4d6b-9f5f-36e05dae9a78",
      name: getUserData().name,
      reating: rating,
      reviewDescription: addReviewController.text,
    );

    context.read<Productsentity>().reviews!.add(review);
    context
        .read<ReviewsCubit>()
        .addReview(product: context.read<Productsentity>());
  }
}
