import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Home/Presentation/manager/reviews_cubit/reviews_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/ProductreviewsViewBody.dart';
import 'package:provider/provider.dart';

class ProductreviewsView extends StatelessWidget {
  const ProductreviewsView({super.key, required this.product});
  static const String routeName = '/Productreviews';
  final Productsentity product;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ReviewsCubit(productsrepo: getIt<Productsrepo>()),
      child: Provider.value(
        value: product,
        child: Scaffold(
          appBar: CustomAppBar(
            appBartitle: "المراجعه",
            isBack: true,
          ),
          body: ProductreviewsViewBody(),
        ),
      ),
    );
  }
}
