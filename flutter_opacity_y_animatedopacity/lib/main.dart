import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  double opacidad = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.opacity),
        onPressed: () {
          setState(() {
            opacidad = (opacidad == 1) ? 0 : 1;
          });
        },
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Wrap(
          direction: Axis.vertical,
          spacing: 10,
          children: [
            Rectangulo(Color(0xff00E057), 1),
            Rectangulo(Color(0xff00BFF4), opacidad),
            Rectangulo(Color(0xffFEBF2F), 1),
          ],
        ),
      ),
    );
  }
}

class Rectangulo extends StatelessWidget {
  final Color color;
  final double opacidad;

  Rectangulo(this.color, this.opacidad);

  @override
  Widget build(BuildContext context) {
//    return Opacity(
    return AnimatedOpacity(
      duration: Duration(milliseconds: 600),
      curve: Curves.easeOut,
      opacity: opacidad,
      child: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(color: color),
      ),
    );
  }
}
