import 'package:flutter/material.dart';

class DynamicText extends StatelessWidget {
  final String _text;

  DynamicText(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}