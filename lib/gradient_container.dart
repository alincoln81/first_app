import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:first_app/dice_roller.dart';

const startAlignment = Alignment.topLeft; 
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, this.text, {super.key});

  final List<Color> colors;
  final String text;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
            begin: startAlignment,
            end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller()
      )
    )
    ;
  }
}

