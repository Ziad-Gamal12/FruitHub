import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Profile/domain/repos/ProfileRepo.dart';
import 'package:fruits/features/Profile/presentation/manager/profile_cubit/profile_cubit.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/MyOrdersViewWidgets/MyOrdersViewBody.dart';
import 'package:fruits/generated/l10n.dart';

class MyOrdersView extends StatefulWidget {
  const MyOrdersView({super.key});
  static const routeName = '/MyOrdersView';

  @override
  State<MyOrdersView> createState() => _MyOrdersViewState();
}

class _MyOrdersViewState extends State<MyOrdersView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(getIt<ProfileRepo>()),
      child: Scaffold(
        appBar: CustomAppBar(
          appBartitle: S.of(context).myOrders,
          isBack: true,
        ),
        body: const Myordersviewbody(),
      ),
    );
  }
}
