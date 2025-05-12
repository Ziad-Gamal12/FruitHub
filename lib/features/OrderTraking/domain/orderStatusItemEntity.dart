import 'package:fruits/core/Utils/assets.dart';

class Orderstatusitementity {
  final String status, description, image;

  Orderstatusitementity(
      {required this.status, required this.description, required this.image});
  static List<Orderstatusitementity> orderStatus() => [
        Orderstatusitementity(
          status: "قيد الانتظار",
          description: "طلبك قيد المراجعة وسيتم معالجته قريبًا",
          image: Assets.assetsImagesPenddingStatusIcon,
        ),
        Orderstatusitementity(
          status: "قبول الطلب",
          description: "تم قبول طلبك وجاري تحضيره للإرسال",
          image: Assets.assetsImagesAcceptedStatusIcon,
        ),
        Orderstatusitementity(
          status: "خرج للتوصيل",
          description: "طلبك الآن في طريقه إليك عبر مندوب التوصيل",
          image: Assets.assetsImagesShippedStatusIcons,
        ),
        Orderstatusitementity(
          status: "تم التسليم",
          description: "تم توصيل الطلب بنجاح، نتمنى أن ينال إعجابك",
          image: Assets.assetsImagesDeliveredStatusIcon,
        ),
      ];
}
