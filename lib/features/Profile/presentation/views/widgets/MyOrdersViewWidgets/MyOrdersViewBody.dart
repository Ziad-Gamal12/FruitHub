import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/widgets/CustomOrderInfo.dart';
import 'package:fruits/features/OrderTraking/presentation/Views/OrderTrakingView.dart';
import 'package:fruits/features/Profile/presentation/manager/profile_cubit/profile_cubit.dart';

class Myordersviewbody extends StatefulWidget {
  const Myordersviewbody({
    super.key,
  });

  @override
  State<Myordersviewbody> createState() => _MyordersviewbodyState();
}

class _MyordersviewbodyState extends State<Myordersviewbody> {
  @override
  void initState() {
    context.read<ProfileCubit>().getMyOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KHorizentalPadding),
      child: BlocBuilder<ProfileCubit, ProfileState>(builder: (context, state) {
        if (state is ProfileGetMyOrdersFailure) {
          return Center(
            child: Text(state.errmessage),
          );
        } else if (state is ProfileGetMyOrdersSuccess) {
          List orders = state.orders;
          return orders.isEmpty
              ? const Center(
                  child: Text("No orders"),
                )
              : ListView.builder(
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Ordertrakingview.routeName,
                                arguments: orders[index]);
                          },
                          child: Customorderinfo(
                            order: orders[index],
                          )),
                    );
                  });
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
