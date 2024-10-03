import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_Home_AppBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/offers_ListView_Item.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: KHorizentalPadding, vertical: KVerticalPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const customHomeAppBar(),
                const SizedBox(
                  height: 16,
                ),
                CustomSearchTextfield(
                  controller: controller,
                ),
                const SizedBox(
                  height: 12,
                ),
                const OffersListviewItem(
                    backgroundImage: Assets.assetsImagesOffer)
              ],
            ),
          )
        ],
      ),
    );
  }
}
