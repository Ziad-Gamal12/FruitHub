import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/widgets/CustomTextFeiled.dart';
import 'package:fruits/generated/l10n.dart';

class SendReviewTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;
  final VoidCallback onSend;

  const SendReviewTextField({
    super.key,
    required this.controller,
    required this.isLoading,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFeiled(
      controller: controller,
      hintText: S.of(context).writeAComment,
      validator: (value) {
        if (value!.isEmpty) {
          return S.of(context).writeAComment;
        }
        return null;
      },
      suffix: isLoading
          ? const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                color: AppColors.KsecondaryColor,
              ),
            )
          : IconButton(
              onPressed: onSend,
              icon: const Icon(
                FontAwesomeIcons.paperPlane,
                color: Colors.black,
              ),
            ),
      obscureText: false,
      keyboardType: TextInputType.text,
    );
  }
}
