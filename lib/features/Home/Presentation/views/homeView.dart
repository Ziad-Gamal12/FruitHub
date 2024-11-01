// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BottomNavigationBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/HomeViewBody.dart';

class Homeview extends StatelessWidget {
  static const homeView = 'homeView';
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(productsrepo: getIt<Productsrepo>()),
      child: const Scaffold(
        bottomNavigationBar: CustomBottomnavigationbar(),
        body: SafeArea(child: HomeViewBody()),
      ),
    );
  }
}
