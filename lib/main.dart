import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatefulWidget {
  @override
  MyWidgetState createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  Color mainColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Test application',
        home: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            title: Text('Tap anywhere'),
          ),
          body: Stack(
            children: <Widget>[
              Center(
                child: Text('Hey there',
                    style:
                        TextStyle(fontSize: 30.0, color: Colors.greenAccent)),
              ),
              Listener(
                behavior: HitTestBehavior.translucent,
                onPointerDown: (e) {
                  setState(() {
                    mainColor = Colors
                        .primaries[Random().nextInt(Colors.primaries.length)];
                  });
                },
              ),
            ],
          ),
        ));
  }
}
