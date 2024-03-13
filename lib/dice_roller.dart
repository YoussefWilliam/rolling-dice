import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rolling_dice/styled_text.dart';

final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller(this.displayedText, {super.key});

  final String displayedText;
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState(displayedText);
  }
}

class _DiceRollerState extends State {
  var imageIndex = 1;

  _DiceRollerState(this.displayedText);

  final String displayedText;

  void handleOnButtonClick() {
    setState(() {
      imageIndex = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$imageIndex.png',
          height: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: handleOnButtonClick,
          child: StyledText(displayedText),
        ),
      ],
    );
  }
}
