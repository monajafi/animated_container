import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadius _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animated Container"),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            decoration: BoxDecoration(borderRadius: _borderRadius,color: _color),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(300).toDouble();
              _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256), random.nextInt(256), 1);
            });
          },
        ),
      ),
    );
  }
}
