import 'package:flutter/material.dart';

class RadiusContainer extends StatelessWidget {
  const RadiusContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: 350.0,
      decoration: const BoxDecoration(
        color: Colors.greenAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25.0),
          bottomRight: Radius.circular(25.0)
        )
        // borderRadius: BorderRadius.circular(25.0)
    ));
  }
}