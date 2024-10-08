// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/core/widgets/fruit_item.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/BestSeller_gideView.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BestSeller_Header.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_Home_AppBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/offers_ListView.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: KHorizentalPadding,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                customHomeAppBar(),
                const SizedBox(
                  height: 16,
                ),
                CustomSearchTextfield(
                  controller: controller,
                ),
                const SizedBox(
                  height: 12,
                ),
                const AspectRatio(
                  aspectRatio: 342 / 158,
                  child: offersListView(),
                ),
                const SizedBox(
                  height: 12,
                ),
                CustomBestsellerHeader(),
                const SizedBox(
                  height: 8,
                ),
              ],
            ),
          ),
          BestsellerGideview()
        ],
      ),
    );
  }
}
