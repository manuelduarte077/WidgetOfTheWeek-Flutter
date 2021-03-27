# WidgetOfTheWeek - Flutter

 - [Expanded #2](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_expanded)
 - [Wrap #3](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_wrap)
 - [PageView #9](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_wrap)
 - [Table #10](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_wrap)
 - [SliverAppBar #11](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_sliver_app_bar)

 ## - [Expanded #2](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_expanded)
 main.dart
```dart
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
```

## - [Wrap #3](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_wrap)
main.dart
```dart
import 'package:flutter/material.dart';
import 'row_Example.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wrap',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Wrap'),
        ),
        body: Center(
          child: WrapTag(),
        ),
      ),
    );
  }
}

class WrapTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10.0, // gap between adjacent chips
      children: <Widget>[
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
        WrapTagChip('Thanos'),
      ],
    );
  }
}

class WrapTagChip extends StatelessWidget {
  final String texto;

  WrapTagChip(this.texto);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(this.texto[0]),
      ),
      label: Text(
        texto,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
```
row_Example.dart
```dart
import 'package:flutter/material.dart';

class RowExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Row(
            children: [
              Tag('Thanos'),
              Tag('Super Man'),
              Tag('Batman'),
              Tag('Flash'),
              Tag('Smash'),
              Tag('Robot'),
            ],
          ),
        ),
      ),
    );
  }
}

class Tag extends StatelessWidget {
  final String texto;

  Tag(this.texto);

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: CircleAvatar(
        child: Text(this.texto[0]),
        backgroundColor: Colors.white,
      ),
      label: Text(
        texto,
        style: TextStyle(color: Colors.white),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
```


## PageView #9

## Table #10

## SliverAppBar #11
main.dart
```dart
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
```

