import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> { //_ denotes a private class, only accessible in this file
  
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1; //value between 1 & 6 inclusive
    setState(()
    {
       activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage, 
          width: 200
        ), 
        TextButton(
          onPressed: rollDice, 
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white, 
            textStyle: const TextStyle(
              fontSize: 20
            )
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    )
    ;
  }
}