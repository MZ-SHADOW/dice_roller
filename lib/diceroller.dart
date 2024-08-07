import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();

class Diceroller extends StatefulWidget {
  const Diceroller({super.key});
  @override
  State<Diceroller> createState() {
    return _DicerollerState();
  }
}

class _DicerollerState extends State<Diceroller> {
  var cdice = 3;
  void roll() {
    setState(() {
      cdice = random.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Image.asset('assets/images/dice$cdice.png', width: 240),
      const SizedBox(height: 20),
      ElevatedButton(
        onPressed: roll,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(15.6),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          foregroundColor: const Color.fromARGB(255, 53, 0, 102),
        ),
        child: const Text(
          'Press the button to roll the dice',
          style: TextStyle(fontSize: 15.4),
        ),
      ),
    ]);
  }
}
