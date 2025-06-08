import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/core/Utils/textStyles.dart';
import 'package:fruits/features/Profile/presentation/views/MyFavoriteProductsView.dart';
import 'package:fruits/features/Profile/presentation/views/MyOrdersView.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileActionsItem.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class ProfileActionsList extends StatelessWidget {
  final bool isNotificationAllowed;
  final ValueChanged<bool> onNotificationToggle;

  const ProfileActionsList({
    super.key,
    required this.isNotificationAllowed,
    required this.onNotificationToggle,
  });

  @override
  Widget build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyOrdersView.routeName);
          },
          child: Customprofileactionsitem(
            image: Assets.assetsImagesOrdersIcon,
            title: S.of(context).myOrders,
            trailing: Transform.rotate(
              angle: languageCode == 'en' ? 0 : 3.14,
              child: SvgPicture.asset(
                Assets.assetsImagesArrowleft,
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Myfavoriteproductsview.routeName);
          },
          child: Customprofileactionsitem(
            image: Assets.assetsImagesFavouritesIcon,
            title: S.of(context).favorites,
            trailing: Transform.rotate(
              angle: languageCode == 'en' ? 0 : 3.14,
              child: SvgPicture.asset(
                Assets.assetsImagesArrowleft,
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesNotificationsIcon,
          title: S.of(context).notifications,
          trailing: Switch(
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: Colors.grey.shade400,
            activeColor: Colors.green,
            activeTrackColor: Colors.grey.shade300,
            value: isNotificationAllowed,
            onChanged: onNotificationToggle,
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesLanguageIcon,
          title: S.of(context).language,
          trailing: Row(
            children: [
              Text(
                "العربية",
                style: textStyles.textstyle13.copyWith(color: Colors.black),
              ),
              const SizedBox(width: 5),
              Transform.rotate(
                angle: languageCode == 'en' ? 0 : 3.14,
                child: SvgPicture.asset(
                  Assets.assetsImagesArrowleft,
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
        Customprofileactionsitem(
          image: Assets.assetsImagesAboutUsIcon,
          title: S.of(context).aboutUs,
          trailing: Transform.rotate(
            angle: languageCode == 'en' ? 0 : 3.14,
            child: SvgPicture.asset(
              Assets.assetsImagesArrowleft,
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
    );
  }
}
