import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/products/presentation/views/widgets/FilterOptionRow.dart';
import 'package:fruits/generated/l10n.dart';

class FilterOptionsSection extends StatelessWidget {
  final String selectedValue;
  final ValueChanged<String> onValueChanged;

  const FilterOptionsSection({
    super.key,
    required this.selectedValue,
    required this.onValueChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).sortBy,
          style: textStyles(context: context)
              .textstyle19
              .copyWith(color: Colors.black),
        ),
        const SizedBox(height: 11),
        FilterOptionRow(
          value: "0",
          groupValue: selectedValue,
          label: S.of(context).priceLowToHigh,
          onChanged: onValueChanged,
        ),
        const SizedBox(height: 10),
        FilterOptionRow(
          value: "1",
          groupValue: selectedValue,
          label: S.of(context).priceHighToLow,
          onChanged: onValueChanged,
        ),
      ],
    );
  }
}
