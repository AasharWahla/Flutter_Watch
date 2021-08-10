import 'dart:math';

import 'package:flutter/material.dart';

class SecondHand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.topCenter,
      transform: Matrix4.identity()
        ..translate(0.0, 0.0, 0.0)
        ..rotateZ(
          pi + (2 * pi * (DateTime.now().second / 60)),
        ),
      child: Container(
        height: MediaQuery.of(context).size.width * .42,
        width: 1,
        color: Colors.orange,
      ),
    );
  }
}
