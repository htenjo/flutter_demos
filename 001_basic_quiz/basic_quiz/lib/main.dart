import 'package:basic_quiz/buttons.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'model.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your Quiz',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: QuizHome(title: 'Basic Quiz App'),
    );
  }
}

class QuizHome extends StatefulWidget {
  QuizHome({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _QuizHomeState createState() => _QuizHomeState();
}

class _QuizHomeState extends State<QuizHome> {
  int _counter = 0;
  double _score = 0;
  double _tempScore = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _score += _tempScore;
      print("_incrementCounter ::: counter = $_counter - _score = $_score - _tempScore = $_tempScore");
      _tempScore = 0;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
      _score = 0;
      _tempScore = 0;
      print("_resetCounter $_counter");
    });
  }

  void selectOptionScore(double newScore) {
    _tempScore = newScore;
    print("::: SelectedOption = $newScore");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Final Questionnaire !!!',
              style: Theme.of(context).textTheme.headline4,
            ),
            QUESTIONNAIRE.length == _counter
                ? Text("Your score $_score")
                : QuestionWidget(QUESTIONNAIRE[_counter], selectOptionScore),
            QUESTIONNAIRE.length > _counter ? NextButton(_incrementCounter) : FinalButton(_resetCounter),
          ],
        ),
      ),
    );
  }
}
