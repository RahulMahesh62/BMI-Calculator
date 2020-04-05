import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';

enum IconGender{male,female,}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = kinactiveContainerClr; 
  Color femaleCardClr = kinactiveContainerClr;

  IconGender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                      colour: selectedGender == IconGender.male ? kactiveContainerClr : kinactiveContainerClr,
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
                      colour: selectedGender == IconGender.female ? kactiveContainerClr : kinactiveContainerClr,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',),),
          ),
              ],),),
          Expanded(
            child: InputPageCard(
              colour: kactiveContainerClr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: klabeltextstyle,
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                      Text(
                        '180',
                        style: kTTextStyle,
                      ),
                      Text('cm',
                      style: klabeltextstyle,)
                    ],),
                ],)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputPageCard(
                    colour: kactiveContainerClr,),
          ),
                Expanded(
                  child: InputPageCard(
                    colour: kactiveContainerClr,),
          ),
              ],),),
              Container(
                margin: EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  color: kbottomContainerClr,
                  borderRadius:BorderRadius.circular(10.0),),
                width: double.infinity,
                height: 70.0,
                ),
        ],
        ),
    );
  }
}


