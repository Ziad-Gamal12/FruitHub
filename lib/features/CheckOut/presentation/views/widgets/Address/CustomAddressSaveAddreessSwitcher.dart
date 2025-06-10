import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';

class CustomAddressSaveAddreessSwitcher extends StatelessWidget {
  const CustomAddressSaveAddreessSwitcher({
    super.key,
    required this.isAddressSaved,
    required this.onChanged,
  });

  final bool isAddressSaved;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: 42,
      child: FittedBox(
        child: Switch(
            inactiveTrackColor: const Color(0xFFF9FAFA),
            inactiveThumbColor: Colors.grey,
            dragStartBehavior: DragStartBehavior.start,
            activeColor: Colors.white,
            activeTrackColor: AppColors.MainColor,
            value: isAddressSaved,
            onChanged: onChanged),
      ),
    );
  }
}
