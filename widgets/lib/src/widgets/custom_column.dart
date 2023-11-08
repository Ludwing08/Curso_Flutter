import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      width: double.infinity,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //trabaja solo vertical
            Expanded(
              child: Container(
                color: Colors.grey,
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.red,
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.deepOrangeAccent,
              ),
            )
          ]),
    );
  }
}
