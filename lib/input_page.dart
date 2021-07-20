import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'results_page.dart';

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
  Gender genderSelected = Gender.none;
  int height = 180;
  int weight = 60;
  int age = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    cardColor: genderSelected == Gender.male
                        ? kkkActiveCardColor
                        : kkkInactiveCardColor,
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
                    cardColor: genderSelected == Gender.female
                        ? kkkActiveCardColor
                        : kkkInactiveCardColor,
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
            child: ReusableCard(
              cardColor: kkkActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Height",
                    style: kkkCardTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: kkkNumberWithTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kkkCardTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0XFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        trackHeight: 0.5,
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    cardColor: kkkActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Weight",
                          style: kkkCardTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kkkNumberWithTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onButtonPress: (){
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onButtonPress: (){
                                setState(() {
                                  weight--;
                                });                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(cardColor: kkkActiveCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age",
                      style: kkkCardTextStyle,),
                      Text(age.toString(),
                      style: kkkNumberWithTextStyle,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(
                            icon: FontAwesomeIcons.plus,
                            onButtonPress: (){
                              setState(() {
                                age++;
                              });
                            },
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          RoundIconButton(
                            icon: FontAwesomeIcons.minus,
                            onButtonPress: (){
                              setState(() {
                                age--;
                              });
                            },
                          )
                        ],
                      )
                    ],
                  ),),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResultsPage())
              );
            },
            child: Container(
              child: Text("CALCULATE"),
              color: kkkBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kkkBottomContainerHeight,
            ),
          )
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onButtonPress});
  final IconData icon;
  final VoidCallback onButtonPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onButtonPress,
      child: Icon(icon),
    );
  }
}
