import 'dart:math';

import 'package:flutter/material.dart';
import 'package:watch/clockCover.dart';
import 'package:watch/hourHand.dart';
import 'package:watch/minuteHand.dart';
import 'package:watch/secondHand.dart';

class Clock extends StatefulWidget {
  Clock({
    required this.currentTime,
  });

  DateTime currentTime;

  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  double width = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    double radius = width / 2;
    return Stack(
      children: [
        for (int i = 0; i < 12; i++)
          Positioned(
            top: radius,
            left: radius,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()
                ..translate(0.0, 0.0, 0.0)
                ..translate(-20 / 2, -20 / 2, 2 * pi)
                ..rotateZ(
                  pi + (2 * pi * (i / 12)),
                )
                ..translate(0.0, radius - 20 * 2, 0.0)
                ..rotateZ(pi - 2 * pi * (i / 12)),
              child: Text(
                (i == 0) ? "12" : i.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ClockCover(),
        Positioned(
          top: radius,
          left: radius,
          child: HourHand(),
        ),
        Positioned(
          top: radius,
          left: radius,
          child: MinuteHand(),
        ),
        Positioned(
          top: radius,
          left: radius,
          child: SecondHand(),
        ),
      ],
    );
  }
}
