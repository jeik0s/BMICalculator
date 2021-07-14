import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardColor, this.cardChild});

  final Color cardColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardColor,
      ),
      margin: EdgeInsets.all(15.0),
      child: cardChild,
    );
  }
}
