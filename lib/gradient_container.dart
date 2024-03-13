import 'package:flutter/material.dart';
import 'package:rolling_dice/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(
    this.colors,
    this.displayedText, {
    super.key,
  });

  final List<Color> colors;
  final String displayedText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: DiceRoller(displayedText),
      ),
    );
  }
}
