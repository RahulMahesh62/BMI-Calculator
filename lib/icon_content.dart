import 'package:flutter/material.dart';

const labeltextstyle = TextStyle(
            fontSize:18.0,
            color: Color(0xFFFFFFFF),
);

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.label});
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.white,
          size: 80.0,),
          SizedBox(height: 15.0,),
          Text(label,
          style: labeltextstyle,
          ),
      ],);
  }
}
