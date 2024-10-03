import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Termscheckbox extends StatefulWidget {
  final ValueChanged<bool> onChanged;
  const Termscheckbox({
    super.key,
    required this.onChanged,
  });

  @override
  State<Termscheckbox> createState() => _TermscheckboxState();
}

class _TermscheckboxState extends State<Termscheckbox> {
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
