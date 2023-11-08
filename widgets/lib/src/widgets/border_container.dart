import 'package:flutter/material.dart';

class BorderContainer extends StatelessWidget {
  const BorderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 250.0,
      width: 350.0,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        border: Border.all(width: 3.0)
      ),
      child: const Text('Container con bordes'),
    );
  }
}