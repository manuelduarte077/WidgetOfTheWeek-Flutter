# WidgetOfTheWeek - Flutter

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
