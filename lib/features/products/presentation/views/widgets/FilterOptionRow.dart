import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/core/widgets/CustomRadioWidget.dart';

class FilterOptionRow extends StatelessWidget {
  final String value;
  final String groupValue;
  final String label;
  final ValueChanged<String> onChanged;

  const FilterOptionRow({
    super.key,
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRadioWidget(
          value: value,
          groupValue: groupValue,
          onchange: (val) {
            if (val != null) onChanged(val);
          },
        ),
        const SizedBox(width: 16),
        Text(
          label,
          style: textStyles.textstyle13.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
