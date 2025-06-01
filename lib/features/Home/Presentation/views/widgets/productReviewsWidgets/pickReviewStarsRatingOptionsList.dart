import 'package:flutter/material.dart';
import 'package:fruits/features/Home/Presentation/views/widgets/productReviewsWidgets/pickstarRatingItem.dart';

class Pickreviewstarsratingoptionslist extends StatefulWidget {
  const Pickreviewstarsratingoptionslist(
      {super.key, required this.onStarSelected});
  final ValueChanged<int> onStarSelected;
  @override
  State<Pickreviewstarsratingoptionslist> createState() =>
      _PickreviewstarsratingoptionslistState();
}

class _PickreviewstarsratingoptionslistState
    extends State<Pickreviewstarsratingoptionslist> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: () {
              currentIndex = 5;
              widget.onStarSelected(currentIndex);
              setState(() {});
            },
            child:
                Pickstarratingitem(text: "5", isSelected: currentIndex == 5)),
        const SizedBox(
          width: 4,
        ),
        InkWell(
            onTap: () {
              currentIndex = 4;
              widget.onStarSelected(currentIndex);

              setState(() {});
            },
            child:
                Pickstarratingitem(text: "4", isSelected: currentIndex == 4)),
        const SizedBox(
          width: 4,
        ),
        InkWell(
            onTap: () {
              currentIndex = 3;
              widget.onStarSelected(currentIndex);

              setState(() {});
            },
            child:
                Pickstarratingitem(text: "3", isSelected: currentIndex == 3)),
        const SizedBox(
          width: 4,
        ),
        InkWell(
            onTap: () {
              currentIndex = 2;
              widget.onStarSelected(currentIndex);

              setState(() {});
            },
            child:
                Pickstarratingitem(text: "2", isSelected: currentIndex == 2)),
        const SizedBox(
          width: 4,
        ),
        InkWell(
            onTap: () {
              currentIndex = 1;
              widget.onStarSelected(currentIndex);

              setState(() {});
            },
            child:
                Pickstarratingitem(text: "1", isSelected: currentIndex == 1)),
      ],
    );
  }
}
