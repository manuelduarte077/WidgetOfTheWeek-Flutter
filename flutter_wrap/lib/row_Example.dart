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
