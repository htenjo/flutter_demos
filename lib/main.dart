import 'dart:math';

import 'package:first_app/button_change.dart';
import 'package:first_app/dynamic_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(DynamicTextApp());

class DynamicTextApp extends StatefulWidget {
  @override
  _DynamicTextAppState createState() => _DynamicTextAppState();
}

class _DynamicTextAppState extends State<DynamicTextApp> {
  List<String> _texts = [
    "Today is a great day!",
    "It's Friday...",
    "Hmmm... have a nice day!"
  ];
  Random _random = Random(0);
  String _textToDisplay;

  _DynamicTextAppState() {
    changeText();
  }

  void changeText() {
    setState(() {
      this._textToDisplay = _texts[_random.nextInt(_texts.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dynamic Text App"),
        ),
        body: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DynamicText(_textToDisplay),
              ButtonChangeText(changeText),
            ],
          ),
        ),
      ),
    );
  }
}
