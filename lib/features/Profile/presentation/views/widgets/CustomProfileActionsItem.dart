import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class Customprofileactionsitem extends StatelessWidget {
  const Customprofileactionsitem({
    super.key,
    required this.title,
    required this.image,
    required this.trailing,
  });
  final String title, image;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  image,
                  height: 25,
                  width: 25,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  title,
                  style: textStyles(context: context).textstyle13.copyWith(
                      fontWeight: FontWeight.w600, color: Colors.grey),
                ),
                const Spacer(),
                trailing
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Divider(
            height: 1,
            color: Colors.grey.shade300,
          )
        ],
      ),
    );
  }
}
