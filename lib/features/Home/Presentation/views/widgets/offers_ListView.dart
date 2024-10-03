import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/offers_ListView_Item.dart';

class offersListView extends StatelessWidget {
  const offersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: KHorizentalPadding, left: 4),
          child: OffersListviewItem(backgroundImage: Assets.assetsImagesOffer),
        );
      },
    );
  }
}
