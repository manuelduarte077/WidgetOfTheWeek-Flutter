 # - [SafeArea #1](https://github.com/manuelduarte077/WidgetOfTheWeek-Flutter/tree/main/flutter_safe_area)
  main.dart
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final estilo = TextStyle(fontSize: 20);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          left: true,
          child: ListView(
            children: List.generate(
              100,
              (i) => Text(
                '$i - Hola Mundo',
                style: estilo,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
