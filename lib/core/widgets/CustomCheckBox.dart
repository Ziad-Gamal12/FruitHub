// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomCheckBox extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  const CustomCheckBox({
    super.key,
    required this.onChanged,
  });

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isChecked = !isChecked;
        widget.onChanged(isChecked);
        setState(() {});
      },
      child: AnimatedContainer(
          height: 24,
          width: 24,
          duration: const Duration(milliseconds: 100),
          decoration: ShapeDecoration(
            color: isChecked ? AppColors.MainColor : Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 1.50,
                  color:
                      isChecked ? Colors.transparent : const Color(0xFFDCDEDE)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: isChecked
              ? Padding(
                  padding: const EdgeInsets.all(4),
                  child: SvgPicture.asset(
                    Assets.assetsImagesCheckedIcon,
                  ),
                )
              : const SizedBox()),
    );
  }
}
