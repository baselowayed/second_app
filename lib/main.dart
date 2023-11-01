import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 248, 195, 179),
        body: GradientContainer([
          Color.fromARGB(255, 69, 24, 77),
          Color.fromARGB(255, 233, 181, 243)
        ]),
      ),
    ),
  );
}
