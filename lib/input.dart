import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
const activeContainerClr=Color(0xff10ac84);
const inactiveContainerClr=Color(0xff218c74);
const bottomContainerClr = Color(0xffb71540);

enum IconGender{male,female,}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveContainerClr; 
  Color femaleCardClr = inactiveContainerClr;

  IconGender selectedGender;

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
                      child: InputPageCard(
                        onPress: (){
                          setState(() {
                            selectedGender = IconGender.male;
                          });
                        },
                      colour: selectedGender == IconGender.male ? activeContainerClr : inactiveContainerClr,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',),),
          ),
                Expanded(
                      child: InputPageCard(
                        onPress: (){
                          setState(() {
                            selectedGender = IconGender.female;
                          });
                        },
                      colour: selectedGender == IconGender.female ? activeContainerClr : inactiveContainerClr,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',),),
          ),
              ],),),
          Expanded(
            child: InputPageCard(
              colour: activeContainerClr,),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputPageCard(
                    colour: activeContainerClr,),
          ),
                Expanded(
                  child: InputPageCard(
                    colour: activeContainerClr,),
          ),
              ],),),
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: bottomContainerClr,
                  borderRadius:BorderRadius.circular(10.0),),
                width: double.infinity,
                height: 70.0,
                ),
        ],
        ),
    );
  }
}


