import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fruits/core/Entities/ReviewsEntity.dart';
import 'package:fruits/core/Utils/textStyles.dart';

class Customreviewslistitem extends StatelessWidget {
  const Customreviewslistitem({super.key, required this.reviewentity});
  final Reviewsentity reviewentity;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          minLeadingWidth: 70,
          title: Text(
            reviewentity.name,
            style: textStyles.textstyle16.copyWith(color: Colors.black),
          ),
          leading: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: reviewentity.imageUrl,
                  height: 80,
                  width: 57,
                  fit: BoxFit.cover,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              Positioned(
                  bottom: -1,
                  right: -1,
                  child: Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.yellow.shade200,
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 6), // changes position of shadow
                          ),
                        ],
                        color: const Color(0xffFFC529),
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "${reviewentity.reating}.0",
                      style: textStyles.textstyle11.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w600),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 17,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            reviewentity.reviewDescription,
            style:
                textStyles.textstyle13.copyWith(color: const Color(0xff949D9E)),
          ),
        ),
      ],
    );
  }
}
