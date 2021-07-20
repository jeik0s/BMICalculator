import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmicalculator/components/reusable_card.dart';
import '/constants.dart';
import 'package:bmicalculator/components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI CALCULATOR")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your result",
                style: kkkTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              cardColor: kkkActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Normal',
                  style: kkkResultTextStyle,
                  ),
                  Text('18.3',
                  style: kkkBMITextStyle,),
                  Text('Your BMI result is ok',
                  style: kkkBodyTextStyle,)
                ],
              ),
            )
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          },
              buttonText: 'RE-CALCULATE')
        ],
      ),
    );
  }
}