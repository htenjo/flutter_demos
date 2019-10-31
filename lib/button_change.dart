import 'package:flutter/material.dart';

class ButtonChangeText extends StatelessWidget {
  final Function changeFunction;

  ButtonChangeText(this.changeFunction);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text("Change Text"),
      color: Colors.lightBlueAccent,
      onPressed: changeFunction,
    );
  }
}
