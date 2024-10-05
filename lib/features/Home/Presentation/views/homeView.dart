import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_BottomNavigationBar.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/HomeViewBody.dart';

class Homeview extends StatelessWidget {
  static const homeView = 'homeView';
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomnavigationbar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
