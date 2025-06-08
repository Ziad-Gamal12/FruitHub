import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;

    return Container(
      padding: EdgeInsets.only(
          right: languageCode == 'en' ? 10 : 30,
          top: 19,
          bottom: 10,
          left: languageCode == 'ar' ? 10 : 30),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
      ),
      child: child,
    );
  }
}
