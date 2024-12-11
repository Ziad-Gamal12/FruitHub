// ignore_for_file: file_names

import 'package:fruits/core/Entities/ProductsEntity.dart';
import 'package:fruits/core/Entities/ReviewsEntity.dart';
import 'package:fruits/core/Models/ReviewsModel.dart';

class Productsmodel {
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
  final List<Reviewmodel> reviews;
  final num sellingCount;
  Productsmodel(
      {required this.name,
      required this.sellingCount,
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

  factory Productsmodel.fromJson(Map<String, dynamic> json) {
    return Productsmodel(
      name: json["name"],
      sellingCount: json["sellingCount"],
      reviews: List<Reviewmodel>.from(
          json["reviews"].map((x) => Reviewmodel.fromJson(x))).toList(),
      price: json["price"],
      caloriesUnit: json["caloriesUnit"],
      expirnationsMonths: json["expirnationsMonths"],
      isOrganic: json["isOrganic"],
      amout: json["amout"],
      code: json["code"],
      description: json["description"],
      imageUrl: json["imageUrl"],
      rating: json["rating"],
      isFeature: json["isFeature"],
    );
  }
  Productsentity toEntity() {
    return Productsentity(
        avgRating: getAvgRating(
            productsreviews: reviews.map((e) => e.toEntity()).toList()),
        name: name,
        reviews: reviews.map((e) => e.toEntity()).toList(),
        price: price,
        caloriesUnit: caloriesUnit,
        expirnationsMonths: expirnationsMonths,
        isOrganic: isOrganic,
        amout: amout,
        code: code,
        description: description,
        imageUrl: imageUrl,
        rating: rating,
        isFeature: isFeature);
  }

  double getAvgRating({required List<Reviewsentity> productsreviews}) {
    double sum = 0.0;
    if (productsreviews.isEmpty) {
      return 0.0;
    } else {
      for (int i = 0; i < productsreviews.length; i++) {
        sum += productsreviews[i].reating;
      }
      return sum / productsreviews.length;
    }
  }

  toMap() {
    return {
      "name": name,
      "price": price,
      "amout": amout,
      "imageUrl": imageUrl,
      "code": code,
      "description": description,
      "isFeature": isFeature,
      "caloriesUnit": caloriesUnit,
      "expirnationsMonths": expirnationsMonths,
      "isOrganic": isOrganic,
      "rating": rating,
      "reviews": reviews.map((e) => e.toJson()).toList()
    };
  }
}
