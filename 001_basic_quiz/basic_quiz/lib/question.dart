import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  List<String> answerOptions;

  Question({this.questionText, this.answerOptions});

  List<Widget> getAvailableOptions() {
    return answerOptions
        .map((item) => RaisedButton(
              child: Text(item),
              onPressed: null,
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(questionText),
          ...getAvailableOptions(),
        ],
      ),
    );
  }
}
