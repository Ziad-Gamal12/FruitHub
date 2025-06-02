import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/BestSeller_gridView.dart';
import 'package:fruits/features/products/presentation/views/widgets/CustomProductsAppBar.dart';
import 'package:fruits/features/products/presentation/views/widgets/ProductsViewBodyGridVIewHeader.dart';
import 'package:provider/provider.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductsviewBody extends StatefulWidget {
  const ProductsviewBody({super.key, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<ProductsviewBody> createState() => _ProductsviewBodyState();
}

class _ProductsviewBodyState extends State<ProductsviewBody> {
  final TextEditingController controller = TextEditingController();
  final ValueNotifier<String> selectedFilterIndex = ValueNotifier("-1");
  final List<Productsentity> _products = [];
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    controller.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      if (controller.text.isNotEmpty) {
        BlocProvider.of<ProductsCubit>(context)
            .getSearchProducts(keyword: controller.text.trim());
      }
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    controller.dispose();
    selectedFilterIndex.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductsCubit, ProductsState>(
      listener: (context, state) {
        if (state is GetSearchProductsSuccess) {
          _products.clear();
          _products.addAll(state.products);
        } else if (state is GetSearchProductsFailure) {
          errordialog(context, state.errMessage).show();
        }
      },
      child: Provider.value(
        value: _products,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Customproductsappbar(),
              const SizedBox(height: 16),
              CustomSearchTextfield(controller: controller),
              const SizedBox(height: 12),
              Expanded(
                child: BlocBuilder<ProductsCubit, ProductsState>(
                  builder: (context, state) {
                    return Skeletonizer(
                      enabled: state is GetSearchProductsLoading,
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: ValueListenableBuilder<String>(
                              valueListenable: selectedFilterIndex,
                              builder: (context, index, _) {
                                return Productsviewbodygridviewheader(
                                  scaffoldKey: widget.scaffoldKey,
                                  products: _products,
                                  onChanged: (value) {
                                    selectedFilterIndex.value = value;
                                    setState(() {});
                                  },
                                  resluteCount: _products.length,
                                );
                              },
                            ),
                          ),
                          BestsellerGridview(
                            products: selectedFilterIndex.value == "-1"
                                ? _products
                                : context
                                    .read<ProductsCubit>()
                                    .sortProductsByPrice(
                                        isDescending:
                                            selectedFilterIndex.value == "0"
                                                ? false
                                                : true,
                                        products: _products),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
