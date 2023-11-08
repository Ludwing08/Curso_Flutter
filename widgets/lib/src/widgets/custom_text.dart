
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  const CustomText({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Text(
          'Información Importante',
          style: TextStyle( 
              fontSize: 25.0,
              color: Color.fromARGB(255, 73, 7, 255),
              fontWeight: FontWeight.bold,
              backgroundColor: Color.fromARGB(255, 110, 109, 109),
              letterSpacing: 3.0,
              wordSpacing: 5.0),
              maxLines: 2, //maximo d lineas
              overflow: TextOverflow.ellipsis, //saber si hay mas texto
              textAlign: TextAlign.end,
              textScaleFactor: 1.5, // factor mult.
        );
  }

}