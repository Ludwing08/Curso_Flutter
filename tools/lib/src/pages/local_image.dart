import 'package:flutter/material.dart';

class LocalImage extends StatelessWidget {
  const LocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.0,      
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.greenAccent,
            Colors.lightGreenAccent
          ],
          stops: [
            0.3, 0.6
          ]
          )        
      ),
      child: const Image(
        image: AssetImage('assets/shoes.png'),
        fit: BoxFit.fitHeight,
      
      ),
    );
  }
}