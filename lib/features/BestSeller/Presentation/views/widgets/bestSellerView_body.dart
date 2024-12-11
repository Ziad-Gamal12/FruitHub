// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/AwesomeDialog.dart';
import 'package:fruits/features/BestSeller/Presentation/manager/get_best_seller_products_cubit/get_best_seller_products_cubit.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/BestsellerGideviewBestSellerBody.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/bestSellerGrideViewHeader.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/customBestSellerAppBar.dart';

class bestSellerView_body extends StatefulWidget {
  const bestSellerView_body({
    super.key,
  });

  @override
  State<bestSellerView_body> createState() => _bestSellerView_bodyState();
}

class _bestSellerView_bodyState extends State<bestSellerView_body> {
  @override
  void initState() {
    BlocProvider.of<GetBestSellerProductsCubitCubit>(context)
        .getBestSellerProducts();
    super.initState();
  }

  List<Productsentity> products = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetBestSellerProductsCubitCubit,
        GetBestSellerProductsCubitState>(
      listener: (context, state) {
        if (state is GetBestSellerProductsCubitSuccess) {
          products = state.products;
        } else if (state is GetBestSellerProductsCubitFailure) {
          errordialog(context, state.errmessage).show();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
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
              BestsellerGideviewBestSellerBody(
                products: products,
              ),
            ],
          ),
        );
      },
    );
  }
}
