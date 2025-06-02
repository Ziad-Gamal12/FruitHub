import 'package:flutter/material.dart';
import 'package:fruits/core/Helper_Funcitions/getUserData.dart';
import 'package:fruits/core/Utils/App_Colors.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';

class CustomProfileImageWidget extends StatelessWidget {
  const CustomProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(50),
          child: SizedBox(
            height: 90,
            width: 90,
            child: CustomCachedNetWorkImage(
                imageUrl: getUserData().profilePic ??
                    "https://firebasestorage.googleapis.com/v0/b/fruithub-973f6.appspot.com/o/Profile_Picture.png?alt=media&token=ee6ba1fc-d5d2-4d6b-9f5f-36e05dae9a78"),
          ),
        ),
        Positioned(
          bottom: -16,
          right: 0,
          left: 0,
          child: Container(
            alignment: Alignment.center,
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: const Icon(
              Icons.camera_alt_outlined,
              color: AppColors.MainColor,
              size: 15,
            ),
          ),
        )
      ],
    );
  }
}
