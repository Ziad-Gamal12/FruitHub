import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/widgets/CustomBottomSheet.dart';
import 'package:fruits/core/widgets/CustomBottomSheetHeader.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CustomSavedAddressListItem.dart';

class Customsavedaddresslistview extends StatelessWidget {
  const Customsavedaddresslistview({super.key, required this.addresses});
  final List<Orderaddressentity> addresses;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Custombottomsheet(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomBottomSheetHeader(),
              const SizedBox(
                height: 20,
              ),
              Column(
                  children: addresses.map(
                (e) {
                  return InkWell(
                    onTap: () {
                      context
                          .read<ProccessStepsCubit>()
                          .applySavedAddress(address: e);
                    },
                    child: Customsavedaddresslistitem(
                      orderaddressentity: e,
                    ),
                  );
                },
              ).toList()),
            ],
          ),
        ),
      ),
    );
  }
}
