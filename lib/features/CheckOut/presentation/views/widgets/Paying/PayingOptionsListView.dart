import 'package:flutter/material.dart';
import 'package:fruits/features/CheckOut/domain/PayingOptionEntity.dart';
import 'package:fruits/features/CheckOut/presentation/views/widgets/Paying/payingOptionListViewItem.dart';

class PayingOptionsListView extends StatelessWidget {
  const PayingOptionsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: Payingoptionentity.optionsList(context)
            .asMap()
            .entries
            .map((e) => Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: e.key == 3 ? 0 : 16, right: e.key == 0 ? 4 : 0),
                    child: Payingoptionlistviewitem(
                      payingoptionentity: e.value,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
