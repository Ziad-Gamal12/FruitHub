// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/BestSeller_gideView.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BestSeller_Header.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_Home_AppBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/offers_ListView.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getBestSellingProducts();
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  List<Productsentity>? products;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        if (state is ProductsSuccess) {
          products = state.products;
        } else if (state is ProductsFailure) {
          errordialog(context, state.errMessage).show();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
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
                    const AspectRatio(
                      aspectRatio: 342 / 158,
                      child: offersListView(),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomBestsellerHeader(),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              BestsellerGideview(
                products: products ?? [],
                isLoading: state is ProductsLoading,
              )
            ],
          ),
        );
      },
    );
  }
}
