import 'package:flutter/material.dart';
//import 'package:second_app/styled_text.dart';
import 'package:second_app/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorsList, {super.key});
  // const GradientContainer.pink({super.key})
  //     : colorsList = const [
  //         Color.fromARGB(255, 69, 24, 77),
  //         Color.fromARGB(255, 233, 181, 243)
  //       ];

  final List<Color> colorsList;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
