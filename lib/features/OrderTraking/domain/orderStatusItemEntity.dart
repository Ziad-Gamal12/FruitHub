import 'package:flutter/material.dart';
import 'package:fruits/core/Utils/assets.dart';
import 'package:fruits/generated/l10n.dart';

class Orderstatusitementity {
  final String status, description, image;

  Orderstatusitementity(
      {required this.status, required this.description, required this.image});
  static List<Orderstatusitementity> orderStatus(
          {required BuildContext context}) =>
      [
        Orderstatusitementity(
          status: S.of(context).pending,
          description: S.of(context).pendingDescription,
          image: Assets.assetsImagesPenddingStatusIcon,
        ),
        Orderstatusitementity(
          status: S.of(context).accepted,
          description: S.of(context).acceptedDescription,
          image: Assets.assetsImagesAcceptedStatusIcon,
        ),
        Orderstatusitementity(
          status: S.of(context).shipped,
          description: S.of(context).shippedDescription,
          image: Assets.assetsImagesShippedStatusIcons,
        ),
        Orderstatusitementity(
          status: S.of(context).delivered,
          description: S.of(context).deliveredDescription,
          image: Assets.assetsImagesDeliveredStatusIcon,
        ),
      ];
}
