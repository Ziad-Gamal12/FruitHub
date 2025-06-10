import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/CheckOut/domain/OrderAddressEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Address/CustomSavedAddressListView.dart';
import 'package:fruits/generated/l10n.dart';

class ShowSavedAddressTextWidget extends StatelessWidget {
  const ShowSavedAddressTextWidget({
    super.key,
    required this.checkOutScaffoldKey,
    required this.addresses,
  });

  final GlobalKey<ScaffoldState> checkOutScaffoldKey;
  final List<Orderaddressentity> addresses;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: addresses.isNotEmpty ? true : false,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: InkWell(
          onTap: () {
            checkOutScaffoldKey.currentState!
                .showBottomSheet((context) => Customsavedaddresslistview(
                      addresses: addresses,
                    ));
          },
          child: Text(
            S.of(context).showSavedAddresses,
            style: textStyles(context: context).textstyle13.copyWith(
                  color: AppColors.MainColor,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }
}
