import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random(); //optimal step

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    //print(' changing image ...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/pic/dice-$currentDiceRoll.png',
          width: 200,
        ), //StyledText('Hello World!'),
        //OutlinedButton(onPressed: onPressed, child: child), no background with borderline
        //const SizedBox(height: 20),//this can do the work of padding also, its dimensions are hardcoded.
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.black,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
