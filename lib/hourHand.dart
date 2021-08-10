import 'dart:math';

import 'package:flutter/material.dart';

class HourHand extends StatelessWidget {
  final minutes = (DateTime.now().minute + (DateTime.now().hour * 60));
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topCenter,
      transform: Matrix4.identity()
        ..translate(0.0, 0.0, 0.0)
        ..rotateZ(
          pi + (2 * pi * (minutes / 720)),
        ),
      child: Container(
        height: MediaQuery.of(context).size.width * .25,
        width: 3,
        color: Colors.white,
      ),
    );
  }
}
