import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(50),
      child: SizedBox(
        height: 90,
        width: 90,
        child: CustomCachedNetWorkImage(
            imageUrl: getUserData().profilePic ??
                "https://firebasestorage.googleapis.com/v0/b/fruithub-973f6.appspot.com/o/Profile_Picture.png?alt=media&token=ee6ba1fc-d5d2-4d6b-9f5f-36e05dae9a78"),
      ),
    );
  }
}
