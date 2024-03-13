import 'package:flutter/material.dart';
import 'package:rolling_dice/gradient_container.dart';

const List<Color> colors = [
  Color.fromARGB(255, 132, 96, 194),
  Color.fromARGB(255, 132, 96, 194)
];
const String displayedText = 'Roll the dice';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(body: GradientContainer(colors, displayedText))));
}
