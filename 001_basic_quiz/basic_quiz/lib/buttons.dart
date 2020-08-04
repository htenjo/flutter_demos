import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final Function nextFunction;

  NextButton(this.nextFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Next'),
      onPressed: this.nextFunction,
    );
  }
}

class FinalButton extends StatelessWidget {
  final Function closeFunction;

  FinalButton(this.closeFunction);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Finish'),
      onPressed: this.closeFunction,
      color: Colors.lime,
    );
  }
}

class ResponseOptionButton extends StatelessWidget {
  final double value;
  final String label;
  final Function action;

  ResponseOptionButton({this.label, this.value, this.action});

  void selectOption() {
    this.action(this.value);
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(label),
      onPressed: this.selectOption,
      color: Colors.deepOrange,
    );
  }
}
