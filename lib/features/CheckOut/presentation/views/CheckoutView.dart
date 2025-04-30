import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Repos/Orders/orders_Repo.dart';
import 'package:fruits/core/services/get_it_Service.dart';
import 'package:fruits/core/widgets/CustomAppBar.dart';
import 'package:fruits/features/Cart/domain/entities/CartEntity.dart';
import 'package:fruits/features/CheckOut/domain/CheckoutStepItem_entity.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/add_order_cubit/add_order_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/CheckoutviewBody.dart';
import 'package:provider/provider.dart';

class Checkoutview extends StatefulWidget {
  const Checkoutview({super.key, required this.cartentity});
  static const routeName = 'checkout';
  final Cartentity cartentity;
  @override
  State<Checkoutview> createState() => _CheckoutviewState();
}

class _CheckoutviewState extends State<Checkoutview> {
  int currentStep = 0;
  late Orderentity orderentity;
  @override
  void initState() {
    orderentity = Orderentity(
        id: "${DateTime.now().millisecond}-${getUserData().uid}",
        createdAt: DateTime.now(),
        status: "pending",
        cartentity: widget.cartentity,
        isPaidOnline: null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddOrderCubit(getIt<OrdersRepo>())),
        BlocProvider(
          create: (context) => ProccessStepsCubit(),
        )
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: CustomAppBar(
            appBartitle: CheckoutstepitemEntity.checkoutstepitemEntityList()[
                    context.watch<ProccessStepsCubit>().currentStep]
                .title,
          ),
          body: Provider.value(
              value: orderentity, child: const CheckoutviewBody()),
        );
      }),
    );
  }
}
