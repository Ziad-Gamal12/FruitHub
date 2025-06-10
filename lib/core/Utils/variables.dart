// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';

abstract class variables {
  static TextEditingController LoginemailController = TextEditingController();
  static TextEditingController LoginPasswordController =
      TextEditingController();
  static TextEditingController signUpUserNameController =
      TextEditingController();
  static TextEditingController SignupemailController = TextEditingController();
  static TextEditingController SignupPasswordController =
      TextEditingController();
  static TextEditingController CheckoutAddressFullNameController =
      TextEditingController();
  static TextEditingController CheckoutAddressEmailAddressController =
      TextEditingController();
  static TextEditingController CheckoutAddressAddressController =
      TextEditingController();
  static TextEditingController CheckoutAddressCityController =
      TextEditingController();
  static TextEditingController CheckoutAddressFlatNumberController =
      TextEditingController();
  static TextEditingController CheckoutAddressphoneNumberController =
      TextEditingController();
  static TextEditingController CheckoutPayingOwnCardNameController =
      TextEditingController();
  static TextEditingController CheckoutPayingCardNumberController =
      TextEditingController();
  static TextEditingController CheckoutPayingExpirationDateController =
      TextEditingController();
  static TextEditingController CheckoutPayingCVVController =
      TextEditingController();
  static PageController checkoutProccessPageViewController = PageController();
  static int? currentShippingOptionIndex;
  static GlobalKey<FormState> Loginkey = GlobalKey();
  static GlobalKey<ScaffoldState> CheckOutScaffoldKey = GlobalKey();

  static GlobalKey<FormState> SignUpkey = GlobalKey();
  static List<Map<String, String>> fruitHubNotifications = [
    {
      'title': 'تذوق نكهات الموسم!',
      'body': 'احصل على أفضل الفواكه الطازجة بسعر خاص اليوم فقط.'
    },
    {
      'title': 'عروض لا تُفوَّت',
      'body': 'تسوق الآن وتمتع بتخفيضات تصل إلى 30% على الفواكه المختارة.'
    },
    {
      'title': 'فاكهة جديدة وصلت!',
      'body': 'جرب تشكيلة الفواكه الجديدة والعضوية التي أضفناها لتوك.'
    },
    {
      'title': 'وصلك العيد مع الفواكه الطازجة',
      'body': 'استعد للعيد مع خصومات خاصة على جميع منتجات الفواكه.'
    },
    {
      'title': 'الفواكه الصحية في متناول يدك',
      'body': 'تسوق الفواكه الغنية بالفيتامينات لتعزيز صحتك وعائلتك.'
    },
    {
      'title': 'اشتري اليوم، واستلم غداً',
      'body': 'خدمة التوصيل السريع متاحة الآن لجميع المناطق.'
    },
    {
      'title': 'مفاجأة الموسم!',
      'body': 'احصل على علبة فواكه مجانية عند شرائك أكثر من 3 منتجات.'
    },
    {
      'title': 'أفضل الفواكه للموسم الصيفي',
      'body': 'انتعش مع الفواكه الصيفية الطازجة المتوفرة لدينا الآن.'
    },
    {
      'title': 'خصم حصري لأعضاء Fruit Hub',
      'body': 'سجّل اليوم وتمتع بخصومات خاصة وعروض مميزة.'
    },
    {
      'title': 'نقدم لك الفواكه المختارة بعناية',
      'body': 'تجربة تسوق فريدة مع ضمان جودة عالية لكل قطعة فاكهة.'
    }
  ];
}
