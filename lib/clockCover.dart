import 'package:flutter/material.dart';

class ClockCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.all(width * .05),
      height: width * .9,
      width: width * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * .9 / 2),
        border: Border.all(
          width: 3,
          color: Colors.orange,
        ),
      ),
    );
  }
}
