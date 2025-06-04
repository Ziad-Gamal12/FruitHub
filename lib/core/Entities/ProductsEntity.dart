// ignore_for_file: file_names

import 'package:fruits/core/Entities/ReviewsEntity.dart';

class Productsentity {
  final String name;
  final String code;
  String? description;
  String? imageUrl;
  bool? isFeature;
  String price;
  double? amout;
  int? caloriesUnit;
  double? avgRating;
  int? expirnationsMonths;
  bool? isOrganic = false;
  double? rating = 0.0;
  List<Reviewsentity>? reviews;
  num? sellingCount;

  Productsentity(
      {required this.name,
      this.reviews,
      required this.price,
      this.sellingCount,
      this.caloriesUnit,
      this.expirnationsMonths,
      this.isOrganic,
      this.amout,
      required this.code,
      this.description,
      this.imageUrl,
      this.rating,
      this.avgRating,
      this.isFeature});
}
