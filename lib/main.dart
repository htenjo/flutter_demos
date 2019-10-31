import 'package:flutter/material.dart';

void main() => runApp(TextNoLayout());

class TextNoLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Text('This is just a Hello World!!!',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold)));
  }
}
