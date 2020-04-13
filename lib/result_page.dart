import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'bottombtn.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.interpret, @required this.bmiResult, @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpret;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: 
          Text('BMI CALCULATOR'
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(15.0),
              child: Text('Your Result',
              style: KTitleTextStyle,
              ),
              ),
          ),
          Expanded(
            flex: 5,
            child: InputPageCard(
              colour: kactiveContainerClr,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(),
                    style: KResultText,
                    ),
                    Text(bmiResult,
                    style: kBMIStyle,
                  ),
                  Text(
                    interpret,
                    style: kbodytextstyle,
                    textAlign: TextAlign.center,)
                ],
              ),),
            ),
            BottomButton(
              buttonTitle: 'RECALCULATE',
              onTap: () {
                Navigator.pop(context);
              } ,),
        ],
      ),
    );
  }
}