class Notificationscontententity {
  final String title;
  final String body;

  Notificationscontententity({required this.title, required this.body});

  static List<Notificationscontententity> fruitHubNotifications() => [
        Notificationscontententity(
          title: 'تذوق نكهات الموسم!',
          body: 'احصل على أفضل الفواكه الطازجة بسعر خاص اليوم فقط.',
        ),
        Notificationscontententity(
          title: 'عروض لا تُفوَّت',
          body: 'تسوق الآن وتمتع بتخفيضات تصل إلى 30% على الفواكه المختارة.',
        ),
        Notificationscontententity(
          title: 'فاكهة جديدة وصلت!',
          body: 'جرب تشكيلة الفواكه الجديدة والعضوية التي أضفناها لتوك.',
        ),
        Notificationscontententity(
          title: 'وصلك العيد مع الفواكه الطازجة',
          body: 'استعد للعيد مع خصومات خاصة على جميع منتجات الفواكه.',
        ),
        Notificationscontententity(
          title: 'الفواكه الصحية في متناول يدك',
          body: 'تسوق الفواكه الغينة بالفيتامينات لتعزيز صحتك وعائلتك.',
        ),
        Notificationscontententity(
          title: 'اشتري اليوم، واستلم غداً',
          body: 'خدمة التوصيل السريع متاحة الآن لجميع المناطق.',
        ),
        Notificationscontententity(
          title: 'مفاجأة الموسم!',
          body: 'احصل على علبة فواكه مجانية عند شرائك أكثر من 3 منتجات.',
        ),
        Notificationscontententity(
          title: 'أفضل الفواكه للموسم الصيفي',
          body: 'انتعش مع الفواكه الصيفية الطازجة المتوفرة لدينا الآن.',
        ),
        Notificationscontententity(
          title: 'خصم حصري لأعضاء Fruit Hub',
          body: 'سجّل اليوم وتمتع بخصومات خاصة وعروض مميزة.',
        ),
        Notificationscontententity(
          title: 'نقدم لك الفواكه المختارة بعناية',
          body: 'تجربة تسوق فريدة مع ضمان جودة عالية لكل قطعة فاكهة.',
        ),
      ];
}
