import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;

  void _sliderHandle(double newValue) {
    setState(() {
      _fontSize = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  maxLines: null,
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                ),
              ),
              Slider(
                  value: _fontSize, min: 30, max: 200, onChanged: _sliderHandle)
            ],
          ),
        ),
      ),
    );
  }
}
