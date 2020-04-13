import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottombtn.dart';
import 'result_page.dart';

enum IconGender{male,female,}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int age = 30;
  Color femaleCardClr = kinactiveContainerClr;
  int height=170;
  Color maleCardColor = kinactiveContainerClr; 
  IconGender selectedGender;
  int weight=55;

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
                        height.toString(),
                        style: kTTextStyle,
                      ),
                      Text('cm',
                      style: klabeltextstyle,)
                    ],),
                    SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape: RoundSliderOverlayShape(overlayRadius:30.0),
                          thumbColor: Colors.pink,
                          activeTrackColor: Colors.pink,
                          inactiveTrackColor: Colors.black,
                        ),
                        child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newVal){
                          setState(() {
                            height=newVal.round();
                          });
                        }
                      ),
                    ),
                ],)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: InputPageCard(
                    colour: kactiveContainerClr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: klabeltextstyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kTTextStyle,
                          ),
                          SizedBox(
                            height: 2.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                            RoundIconn(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                  setState(() {
                                    weight--;
                                  });
                              },
                              ),
                            SizedBox(
                              width: 15.0,
                              ),
                            RoundIconn(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                              ),
                          ],)
                      ],)
                    ),
          ),
                Expanded(
                  child: InputPageCard(
                    colour: kactiveContainerClr,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: klabeltextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: kTTextStyle,
                          ),
                          SizedBox(
                            height: 2.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                            RoundIconn(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                  setState(() {
                                    age--;
                                  });
                              },
                              ),
                            SizedBox(
                              width: 15.0,
                              ),
                            RoundIconn(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  age++;
                                });
                              },
                              ),
                          ],)
                      ],)),
          ),
              ],),),
              BottomButton(buttonTitle: 'CALCULATE',onTap: (){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultsPage()));
        },),
        ],
        ),
    );
  }
}


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

/*(){
          Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultsPage()));
        },*/