import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/ProductdetailsviewBody.dart';
import 'package:provider/provider.dart';

class Productdetailsview extends StatelessWidget {
  const Productdetailsview({super.key, required this.product});
  static const String routeName = '/productdetailsview';
  final Productsentity product;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(productsrepo: getIt<Productsrepo>()),
      child: Scaffold(
        body: Provider.value(
            value: product, child: const Productdetailsviewbody()),
      ),
    );
  }
}
