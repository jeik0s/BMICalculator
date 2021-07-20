import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardColor, this.cardChild, this.onCardPress});

  final Color cardColor;
  final Widget? cardChild;
  final VoidCallback? onCardPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: cardColor,
        ),
        margin: EdgeInsets.all(15.0),
        child: cardChild,
      ),
    );
  }
}
