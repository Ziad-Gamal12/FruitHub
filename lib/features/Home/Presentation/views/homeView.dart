// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Repos/Products/productsRepo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/features/Cart/presentation/views/widgets/CartviewBody.dart';
import 'package:fruits/features/Home/Presentation/manager/Products_Cubit/products_cubit.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BottomNavigationBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/HomeViewBody.dart';
import 'package:fruits/features/Profile/presentation/views/ProfileView.dart';
import 'package:fruits/features/products/presentation/views/Productsview_Body.dart';

class Homeview extends StatefulWidget {
  static const homeView = 'homeView';
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      const HomeViewBody(),
      ProductsviewBody(
        scaffoldKey: scaffoldKey,
      ),
      const CartviewBody(),
      const ProfileView()
    ];
    return BlocProvider(
      create: (context) => ProductsCubit(productsrepo: getIt<Productsrepo>()),
      child: Scaffold(
        key: scaffoldKey,
        bottomNavigationBar: CustomBottomnavigationbar(
          currentIndex: (value) {
            currentIndex = value;
            setState(() {});
          },
        ),
        body: SafeArea(child: pages[currentIndex]),
      ),
    );
  }
}
