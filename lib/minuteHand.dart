import 'dart:math';

import 'package:flutter/material.dart';

class MinuteHand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topCenter,
      transform: Matrix4.identity()
        ..translate(0.0, 0.0, 0.0)
        ..rotateZ(
          pi + (2 * pi * (DateTime.now().minute / 60)),
        ),
      child: Container(
        height: MediaQuery.of(context).size.width * .37,
        width: 2,
        color: Colors.white,
      ),
    );
  }
}
