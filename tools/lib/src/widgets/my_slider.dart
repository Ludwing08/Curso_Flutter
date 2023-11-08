import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double currentValue = 150.0;
  double maxValue = 300.0;
  double minValue = 150.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: maxValue+10,
          child: Center(
            child: Image(
              height: currentValue,
              image: const AssetImage('assets/shoes.png'),
              
            ),
          ),
        ),
        Slider(
            label: '$currentValue',
            divisions: 5,
            value: currentValue,
            max: maxValue,
            min: minValue,
            onChanged: (value) {
              setState(() {
                currentValue = value;
              });
            })
      ],
    );
  }
}
