import 'package:flutter/material.dart';
import '../constants.dart';

const iconSize = 80.0;

class IconContent extends StatelessWidget {
  IconContent({required this.cardIcon, required this.cardText});

  final IconData cardIcon;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
            cardIcon,
            size: iconSize),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: kkkCardTextStyle,
        )
      ],
    );
  }
}
