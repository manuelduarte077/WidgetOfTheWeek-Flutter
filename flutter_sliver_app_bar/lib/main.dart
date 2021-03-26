import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatelessWidget {
  final rnd = new Random();

  final List<Color> colores = [
    Colors.red,
    Colors.blueAccent,
    Colors.redAccent,
    Colors.blue,
    Colors.purpleAccent,
    Colors.black,
    Colors.yellowAccent,
    Colors.green,
    Colors.greenAccent,
    Colors.pink,
    Colors.purple,
    Colors.pinkAccent,
    Colors.yellow,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> items = List.generate(
      100,
      (i) => Container(
        width: double.infinity,
        height: 150,
        color: colores[rnd.nextInt(this.colores.length)],
      ),
    );

    /*return Scaffold(
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
      ),
    );*/

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text('SliverApp'),
            expandedHeight: 200,
            flexibleSpace: Image.network(
              'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2F4.bp.blogspot.com%2F_NQ_Qdpp-7ro%2FSpBc_E393KI%2FAAAAAAAACVI%2Fn0s2M1vriSE%2Fs400%2F20090816Appenzell(Landscape)10.jpg&f=1&nofb=1',
              fit: BoxFit.cover,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(items),
          ),
        ],
      ),
    );
  }
}
