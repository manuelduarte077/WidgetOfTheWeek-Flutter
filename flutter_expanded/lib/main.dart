import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expanded ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded '),
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Cuadrado(Colors.blueAccent),
              Expanded(
                flex: 2,
                child: Cuadrado(Colors.black),
              ),
              Expanded(
                child: Cuadrado(Colors.black),
              ),
              Cuadrado(Colors.pink),
            ],
          ),
        ),
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;

  Cuadrado(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(color: this.color),
    );
  }
}
