import 'package:flutter/material.dart';

void main() => runApp(SurveyApp());

class SurveyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SurveyAppState();
  }
}

class SurveyAppState extends State<SurveyApp> {
  double currentSize = 10;

  increaseTextSize(int size) {
    return () {
      setState(() {
        currentSize += size;
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is just a Hello World!!!'),
        ),
        body: Row(
          children: [
            RaisedButton(
              onPressed: increaseTextSize(1),
              child: Text('Question 1', style: TextStyle(fontSize: currentSize)),
            ),
            RaisedButton(
              onPressed: increaseTextSize(2),
              child: Text('Question 2', style: TextStyle(fontSize: currentSize)),
            ),
            RaisedButton(
              onPressed: increaseTextSize(3),
              child: Text('Question 3', style: TextStyle(fontSize: currentSize)),
            ),
          ],
        ),
      ),
    );
  }
}
