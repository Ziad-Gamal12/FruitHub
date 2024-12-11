// ignore_for_file: file_names

import 'package:fruits/core/Entities/ReviewsEntity.dart';

class Reviewmodel {
  final String name;
  final String imageUrl;
  final num reating;
  final String reviewDescription;
  Reviewmodel({
    required this.name,
    required this.imageUrl,
    required this.reating,
    required this.reviewDescription,
  });
  factory Reviewmodel.fromEntity({required Reviewsentity entity}) {
    return Reviewmodel(
        name: entity.name,
        imageUrl: entity.imageUrl,
        reating: entity.reating,
        reviewDescription: entity.reviewDescription);
  }
  factory Reviewmodel.fromJson(Map<String, dynamic> json) {
    return Reviewmodel(
        name: json["name"],
        imageUrl: json["imageUrl"],
        reating: json["reating"],
        reviewDescription: json["reviewDescription"]);
  }
  Reviewsentity toEntity() {
    return Reviewsentity(
        name: name,
        imageUrl: imageUrl,
        reating: reating,
        reviewDescription: reviewDescription);
  }

  toJson() {
    return {
      "name": name,
      "imageUrl": imageUrl,
      "reating": reating,
      "reviewDescription": reviewDescription,
    };
  }
}
