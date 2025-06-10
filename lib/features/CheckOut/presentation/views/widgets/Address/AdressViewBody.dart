import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/Utils/variables.dart';
import 'package:fruits/core/widgets/CustomButton.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';
import 'package:fruits/features/CheckOut/domain/OrderEntity.dart';
import 'package:fruits/features/CheckOut/presentation/manager/proccess_steps_cubit/proccess_steps_cubit.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CheckOutAddressInputs.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CustomAddressSaveAddreessSwitcher.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CustomSavedAddressListView.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/ShowSavedAddressTextWidget.dart';
import 'package:fruits/generated/l10n.dart';

class Adressviewbody extends StatefulWidget {
  const Adressviewbody({super.key, required this.checkOutScaffoldKey});
  final GlobalKey<ScaffoldState> checkOutScaffoldKey;
  @override
  State<Adressviewbody> createState() => _AdressviewbodyState();
}

class _AdressviewbodyState extends State<Adressviewbody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isAddressSaved = false;
  List<Orderaddressentity> addresses = [];
  @override
  void initState() {
    addresses = context.read<ProccessStepsCubit>().getAddresses();
    if (addresses.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        widget.checkOutScaffoldKey.currentState!
            .showBottomSheet((context) => Customsavedaddresslistview(
                  addresses: addresses,
                ));
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ProccessStepsCubit, ProccessStepsState,
        AppliedSavedAddress>(
      selector: (state) {
        if (state is AppliedSavedAddress) {
          isAddressSaved = state.savedAddress;
          return state;
        }
        return AppliedSavedAddress();
      },
      builder: (context, state) {
        return Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Form(key: formKey, child: const CheckOutAddressInputs()),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                CustomAddressSaveAddreessSwitcher(
                  isAddressSaved: isAddressSaved,
                  onChanged: (value) async {
                    isAddressSaved = value;
                    formKey.currentState!.save();
                    addresses.add(context.read<Orderentity>().addressEntity!);
                    setState(() {});
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  S.of(context).SaveAddress,
                  style: textStyles(context: context).textstyle13.copyWith(
                      color: const Color(0xff949D9E),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const Flexible(
                child: SizedBox(
              height: 64,
            )),
            ShowSavedAddressTextWidget(
              addresses: addresses,
              checkOutScaffoldKey: widget.checkOutScaffoldKey,
            ),
            CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    if (isAddressSaved) {
                      context
                          .read<ProccessStepsCubit>()
                          .saveAddress(addresses: addresses);
                    }
                    context.read<ProccessStepsCubit>().changeStep();
                    variables.checkoutProccessPageViewController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                    formKey.currentState!.save();
                  }
                },
                text: S.of(context).next),
          ],
        );
      },
    );
  }
}
