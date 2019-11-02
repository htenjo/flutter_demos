import 'package:flutter/material.dart';

class ButtonMenuBottom extends StatelessWidget {
  final IconData iconData;
  final String toolTip;
  final double iconSize;

  ButtonMenuBottom(this.iconData, this.toolTip, this.iconSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      height: double.infinity,
      //decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.grey)),
      child: Icon(
        iconData,
        color: Colors.white54,
        size: iconSize,
        semanticLabel: toolTip,
      ),
    );
  }
}
