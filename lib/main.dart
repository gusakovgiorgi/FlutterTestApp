import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Welcome to Flutter',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
      ),
      body: new Stack(
        children: <Widget>[
          new ColorfulBackgroundWidget(),
          new Center(
            child: Text(
              'Hi there',
              style: new TextStyle(
                  fontSize: 20.0, decorationStyle: TextDecorationStyle.solid),
            ),
          )
        ],
      ),
    ),
  ));
}

class ColorfulBackgroundWidget extends StatefulWidget {
  @override
  State createState() => _ColourfulBackgroundWidgetState();
}

class _ColourfulBackgroundWidgetState extends State<ColorfulBackgroundWidget> {
  Color _color = Colors.tealAccent;
  Random _random = new Random();

  void changeColour() {
    setState(() {
      int a = _random.nextInt(256);
      int r = _random.nextInt(256);
      int g = _random.nextInt(256);
      int b = _random.nextInt(256);
      _color = Color.fromARGB(a, r, g, b);
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: changeColour,
      child: Container(
        color: _color,
      ),
    );
  }
}
