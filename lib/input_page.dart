import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottomContainerHeight = 80.0;
const bottomContainerColor = Color(0xFFEB1555);
const inactiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

enum Gender {
  male,
  female,
  none,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  Gender genderSelected = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onCardPress: () {
                      setState(() {
                        genderSelected = Gender.male;
                      });
                    },
                    cardColor: genderSelected == Gender.male ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onCardPress: () {
                      setState(() {
                        genderSelected = Gender.female;
                      });
                    },
                    cardColor: genderSelected == Gender.female ? activeCardColor : inactiveCardColor,
                    cardChild: IconContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: "WOMAN",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardColor: activeCardColor),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
                Expanded(
                  child: ReusableCard(cardColor: activeCardColor),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}