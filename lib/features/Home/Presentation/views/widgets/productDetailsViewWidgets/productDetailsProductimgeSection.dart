import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/widgets/Custom_CachedNetworkImage.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productDetailsViewWidgets/CustomProductDetailsBackButton.dart';
import 'package:provider/provider.dart';

class productDetailsProductimgeSection extends StatelessWidget {
  const productDetailsProductimgeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Productsentity product = context.read<Productsentity>();
    return Stack(
      children: [
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            height: double.infinity,
            color: const Color(0xFFF3F5F7),
            child: Row(
              children: [
                const Spacer(
                  flex: 2,
                ),
                Expanded(
                  flex: 3,
                  child: CustomCachedNetWorkImage(
                    imageUrl: product.imageUrl ?? "",
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
              ],
            ),
          ),
        ),
        const Positioned(
            top: 50, right: 20, child: CustomProductDetailsBackButton())
      ],
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 60,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
