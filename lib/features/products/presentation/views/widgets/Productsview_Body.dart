import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/core/widgets/Custom_Search_textfield.dart';
import 'package:fruits/core/widgets/custom_skeletonizerWidget.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/BestSeller_gridView.dart';
import 'package:fruits/features/products/presentation/views/widgets/CustomProductsAppBar.dart';
import 'package:fruits/features/products/presentation/views/widgets/ProductsViewBodyGridVIewHeader.dart';

class ProductsviewBody extends StatefulWidget {
  const ProductsviewBody({super.key});

  @override
  State<ProductsviewBody> createState() => _ProductsviewBodyState();
}

class _ProductsviewBodyState extends State<ProductsviewBody> {
  @override
  void initState() {
    BlocProvider.of<ProductsCubit>(context).getBestSellingProducts();
    super.initState();
  }

  TextEditingController controller = TextEditingController();

  List<Productsentity> products = [];

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
          child: CustomSkeletonizerwidget(
            enabled: state is ProductsLoading ? true : false,
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Customproductsappbar(),
                      const SizedBox(
                        height: 16,
                      ),
                      CustomSearchTextfield(
                        controller: controller,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Productsviewbodygridviewheader(
                        resluteCount: products.length,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
                BestsellerGridview(
                  products: products,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
