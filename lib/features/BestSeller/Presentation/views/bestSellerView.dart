// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/BestSeller/Presentation/manager/get_best_seller_products_cubit/get_best_seller_products_cubit.dart';
import 'package:fruits/features/BestSeller/Presentation/views/widgets/bestSellerView_body.dart';
import 'package:fruits/generated/l10n.dart';

class bestSellerView extends StatefulWidget {
  const bestSellerView({super.key});
  static const routeName = 'bestSellerView';

  @override
  State<bestSellerView> createState() => _bestSellerViewState();
}

class _bestSellerViewState extends State<bestSellerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBartitle: S.of(context).bestSelling,
        isBack: true,
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => GetBestSellerProductsCubitCubit(
            productsrepo: getIt<Productsrepo>()),
        child: const bestSellerView_body(),
      )),
    );
  }
}
