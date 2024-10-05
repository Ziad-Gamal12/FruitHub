import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/Custom_Offer_item_Button.dart';

class OffersListviewItem extends StatelessWidget {
  const OffersListviewItem({super.key, required this.backgroundImage});
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: width - 50,
      child: AspectRatio(
        aspectRatio: 342 / 158,
        child: Stack(
          children: [
            Positioned(
                right: width * .1,
                left: 0,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  Assets.assetsImagesOffer,
                  fit: BoxFit.fill,
                )),
            Container(
              width: width * .5,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(4),
                      bottomStart: Radius.circular(4)),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: svg.Svg(
                        Assets.assetsImagesOfferBackGround,
                      ))),
              child: Padding(
                padding: const EdgeInsets.only(right: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "عروض العيد",
                      style: textStyles.textstyle13.copyWith(
                          fontWeight: FontWeight.w400, color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "خصم 25%",
                      style:
                          textStyles.textstyle19.copyWith(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    CustomOfferItemButton(
                      onTap: () {},
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
