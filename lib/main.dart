import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:first_app/gradient_container.dart';

const gradientColors = [
  Color.fromARGB(255, 26, 2, 80),
  Color.fromARGB(255, 0, 0, 0)
];

const titleText = 'Hello World!';

void main() { //This must be called main -Define -Automatically executed
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 63, 5, 120),
        body: GradientContainer(gradientColors, titleText),
      ),
    ),
  ); //This Function must be included in every Flutter App -Execute, needs a widget
}
