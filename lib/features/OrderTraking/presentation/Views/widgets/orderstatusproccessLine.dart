import 'package:flutter/material.dart';

class orderstatusproccessLine extends StatelessWidget {
  const orderstatusproccessLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: MediaQuery.sizeOf(context).width * 0.120,
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.sizeOf(context).width * 0.180),
        width: 1,
        height: double.infinity,
        color: Colors.grey,
      ),
    );
  }
}
