import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:svg_flutter/svg.dart';

class Productattributeitem extends StatelessWidget {
  const Productattributeitem(
      {super.key,
      required this.title,
      required this.description,
      required this.icon});
  final String title, description, icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, right: 24, left: 24),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300, width: 1),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: textStyles.textstyle16.copyWith(
                    color: const Color(0xff23AA49),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                description,
                style: textStyles.textstyle13.copyWith(
                    color: const Color(0xff979899),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Spacer(),
          Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: AspectRatio(
                aspectRatio: 1,
                child: SvgPicture.asset(
                  icon,
                  fit: BoxFit.contain,
                ),
              )),
          const Spacer(),
        ],
      ),
    );
  }
}
