import 'package:flutter/cupertino.dart';
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
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(cardColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(cardColor: Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(cardColor: Color(0xFF1D1E33)),
                ),
                Expanded(
                  child: ReusableCard(cardColor: Color(0xFF1D1E33)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardColor});

  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
      margin: EdgeInsets.all(15.0),
    );
  }
}
