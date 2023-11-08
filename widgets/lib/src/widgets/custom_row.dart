import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: double.infinity,
      height: 150.0,
      child: Flex( //en vez de filas y columnas
        direction: Axis.horizontal, 
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              // height: 150.0,
              color: Colors.green,
            ),
          ),
          
          Expanded(
            child: Container(
              // height: 150.0,
              color: const Color.fromARGB(255, 246, 141, 141),
            ),
          ),

          Expanded(
            child: Container(
              // height: 150.0,
              color: Color.fromARGB(255, 141, 246, 188),
            ),
          ),

          Expanded(
            child: Container(
              height: 150.0,
              color: Color.fromARGB(255, 223, 243, 11),
            ),
          ),
        ],
      ),
    );
  }
}