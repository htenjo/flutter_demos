import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 4),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 1, style: BorderStyle.solid),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      
      // color: Colors.white10,
      child: Text('Chart'),
    );
  }
}
