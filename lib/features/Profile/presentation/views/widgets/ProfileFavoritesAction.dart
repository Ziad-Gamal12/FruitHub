import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/features/Profile/presentation/views/MyFavoriteProductsView.dart';
import 'package:fruits/features/Profile/presentation/views/widgets/CustomProfileActionsItem.dart';
import 'package:fruits/generated/l10n.dart';
import 'package:svg_flutter/svg.dart';

class ProfileFavoritesAction extends StatelessWidget {
  const ProfileFavoritesAction({super.key});

  @override
  Widget build(BuildContext context) {
    String languageCode = Localizations.localeOf(context).languageCode;
    return InkWell(
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
    );
  }
}
