import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  const BasicContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 250.0,
      width: 350.0,
      color: Colors.blueGrey,
      child: const Text('Container Basico'),
    );
  }
}