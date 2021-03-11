import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated Container',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r2 = rnd.nextInt(255);
    final g2 = rnd.nextInt(255);
    final b2 = rnd.nextInt(255);

    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(300) + 50;

    final borderRadius = BorderRadius.circular(rnd.nextInt(10).toDouble());
    final border = Border.all(
        width: rnd.nextInt(10).toDouble() + 2,
        color: Color.fromRGBO(r2, g2, b2, 1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {});
        },
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1200),
          curve: Curves.elasticOut,
          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
            color: Color.fromRGBO(r, g, b, 1),
            borderRadius: borderRadius,
            border: border,
          ),
        ),
      ),
    );
  }
}
