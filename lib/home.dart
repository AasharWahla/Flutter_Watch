import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:watch/clock.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  DateTime currentTime = DateTime.now();
  DateFormat dateFormat = DateFormat("HH:mm:ss");

  late Ticker _ticker;

  @override
  void initState() {
    _ticker = this.createTicker((elapsed) {
      setState(() {
        currentTime = DateTime.now();
      });
    });

    _ticker.start();
    super.initState();
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light,
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          dateFormat.format(
            currentTime,
          ),
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Clock(
          currentTime: currentTime,
        ),
      ),
    );
  }
}
