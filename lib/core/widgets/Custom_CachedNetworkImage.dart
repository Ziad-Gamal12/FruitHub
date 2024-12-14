// ignore_for_file: file_names

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';

class CustomCachedNetWorkImage extends StatelessWidget {
  const CustomCachedNetWorkImage({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      errorWidget: (context, url, error) {
        return Center(child: Image.asset(Assets.assetsImagesErrorIcon));
      },
      imageUrl: imageUrl,
      fit: BoxFit.fill,
    );
  }
}
