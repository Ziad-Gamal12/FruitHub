// ignore_for_file: file_names

import 'package:fruits/core/Entities/ReviewsEntity.dart';

class Productsentity {
  final String name;
  final String code;
  final String description;
  String? imageUrl;
  final bool isFeature;
  final String price;
  final double amout;
  final int caloriesUnit;

  final int expirnationsMonths;
  bool isOrganic = false;
  double rating = 0.0;
  final List<Reviewsentity> reviews;

  Productsentity(
      {required this.name,
      required this.reviews,
      required this.price,
      required this.caloriesUnit,
      required this.expirnationsMonths,
      required this.isOrganic,
      required this.amout,
      required this.code,
      required this.description,
      this.imageUrl,
      required this.rating,
      required this.isFeature});
}
