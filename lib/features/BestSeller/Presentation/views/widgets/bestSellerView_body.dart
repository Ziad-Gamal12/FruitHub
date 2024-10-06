import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/BestsellerGideviewBestSellerBody.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/bestSellerGrideViewHeader.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/customBestSellerAppBar.dart';

class bestSellerView_body extends StatelessWidget {
  const bestSellerView_body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                Custombestsellerappbar(),
                SizedBox(
                  height: 24,
                ),
                bestSellerGrideViewHeader(),
                SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          BestsellerGideviewBestSellerBody(),
        ],
      ),
    );
  }
}
