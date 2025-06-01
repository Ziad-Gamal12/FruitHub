import 'package:flutter/material.dart';

class CustomNoReviewsWidget extends StatelessWidget {
  const CustomNoReviewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Center(
          child: Text("لا يوجد مراجعات لهذا المنتج",
              style: Theme.of(context).textTheme.headlineSmall),
        ),
      ],
    );
  }
}
