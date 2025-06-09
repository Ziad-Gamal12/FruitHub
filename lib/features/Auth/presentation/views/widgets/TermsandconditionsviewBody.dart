import 'package:flutter/material.dart';
import 'package:fruits/constent.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/generated/l10n.dart';

class Termsandconditionsviewbody extends StatelessWidget {
  const Termsandconditionsviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: KHorizentalPadding, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(S.of(context).section_use_title,
                style: textStyles(context: context).textstyle16),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_use_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_products_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_products_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_pricing_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_pricing_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_orders_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_orders_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_returns_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_returns_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_privacy_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_privacy_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_prohibited_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_prohibited_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_ip_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_ip_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_changes_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_changes_content,
              style: textStyles(context: context).textstyle13,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              S.of(context).section_contact_title,
              style: textStyles(context: context).textstyle16,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              S.of(context).section_contact_content,
              style: textStyles(context: context).textstyle13,
            ),
          ],
        ),
      ),
    );
  }
}
