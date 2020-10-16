import 'package:basic_quiz/buttons.dart';
import 'package:basic_quiz/model.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final Function selectOption;

  QuestionWidget(this.question, this.selectOption);

  List<Widget> getAvailableOptions() {
    return question.options
        .map((item) => ResponseOptionButton(label: item.label, value: item.value, action: selectOption))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(question.text),
          ...getAvailableOptions(),
        ],
      ),
    );
  }
}
