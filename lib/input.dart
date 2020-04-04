import 'package:flutter/material.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputPageCard(colour: Color(0xff10ac84),),
          ),
                Expanded(
                  child: InputPageCard(colour: Color(0xff10ac84),),
          ),
              ],),),
          Expanded(
            child: InputPageCard(colour: Color(0xff10ac84),),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputPageCard(colour: Color(0xff10ac84),),
          ),
                Expanded(
                  child: InputPageCard(colour: Color(0xff10ac84),),
          ),
              ],),),
        ],)
    );
  }
}

class InputPageCard extends StatelessWidget {
  InputPageCard({@required this.colour});
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
      color: colour,
      borderRadius: BorderRadius.circular(10.0)),
        );
  }
}

      