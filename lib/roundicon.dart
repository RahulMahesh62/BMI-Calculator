import 'package:flutter/material.dart';

class RoundIconn extends StatelessWidget {
  RoundIconn({this.icon,@required this.onpress});

  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
        ),
      onPressed: onpress,
      shape: CircleBorder(),
      elevation: 0.0,
      fillColor: Color(0xff218c74),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
    );
  }
}