import 'package:flutter/material.dart';
import 'package:shadow/diceroller.dart';

class ContainerGradient extends StatelessWidget {
  const ContainerGradient({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Color.fromARGB(255, 53, 0, 102),
            Color.fromARGB(255, 0, 3, 8),
          ],
        ),
      ),
      child: const Center(
        child: Diceroller(),
      ),
    );
  }
}
