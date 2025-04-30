class CheckoutstepitemEntity {
  final String title;

  final int index;

  CheckoutstepitemEntity({
    required this.title,
    required this.index,
  });
  static List<CheckoutstepitemEntity> checkoutstepitemEntityList() {
    return [
      CheckoutstepitemEntity(title: "الشحن", index: 1),
      CheckoutstepitemEntity(title: "العنوان", index: 2),
      CheckoutstepitemEntity(title: "المراجعه", index: 3),
      CheckoutstepitemEntity(title: "الدفع", index: 4),
    ];
  }
}
