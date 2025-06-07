// ignore_for_file: must_be_immutable, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/managers/cubit/favorite_products_cubit.dart';
import 'package:fruits/core/services/LocalNotifications.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/core/widgets/custom_skeletonizerWidget.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/BestSeller_gridView.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/CustomSearchBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BestSeller_Header.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_Home_AppBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/offers_ListView.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<Productsentity> searchProducts = [];
  Timer? _debounce;
  bool isSearching = false;
  List<Productsentity>? products;
  @override
  void initState() {
    controller.addListener(_onSearchChanged);

    if (products == null) {
      BlocProvider.of<ProductsCubit>(context).getBestSellingProducts();
    }
    if (context.read<FavoriteProductsCubit>().favouriteProducts.isEmpty) {
      context.read<FavoriteProductsCubit>().getFavouriteProducts();
    }

    super.initState();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (controller.text.isNotEmpty) {
        BlocProvider.of<ProductsCubit>(context)
            .getSearchProducts(keyword: controller.text.trim());
        isSearching = true;
        setState(() {});
      } else {
        isSearching = false;
        setState(() {});
      }
    });
  }

  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        if (state is ProductsSuccess) {
          products = state.products;
        } else if (state is ProductsFailure ||
            state is GetFavoriteProductsFailure) {
          errordialog(context, "حدث خطأ").show();
        } else if (state is GetSearchProductsSuccess) {
          searchProducts.clear();
          searchProducts.addAll(state.products);
          isSearching = true;
        } else if (state is GetSearchProductsFailure) {
          errordialog(context, state.errMessage).show();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: KHorizentalPadding,
          ),
          child: CustomSkeletonizerwidget(
            enabled: state is ProductsLoading ? true : false,
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
                      Column(
                        children: [
                          CustomSearchTextfield(
                            controller: controller,
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 12,
                              ),
                              AspectRatio(
                                aspectRatio: 342 / 158,
                                child: InkWell(
                                    onTap: () async {
                                      await LocalNotifications
                                          .sendPeriodicNotification(
                                              id: 0,
                                              title: "test",
                                              body: "This is a test",
                                              payload: "test");
                                    },
                                    child: const offersListView()),
                              ),
                            ],
                          ),
                          Visibility(
                            visible: isSearching,
                            child: Customsearchbar(
                              products: searchProducts,
                            ).animate().fadeIn(duration: 500.ms),
                          ),
                        ],
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
                BestsellerGridview(
                  products: products ?? [],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
