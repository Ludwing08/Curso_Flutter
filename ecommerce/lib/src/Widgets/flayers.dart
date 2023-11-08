import 'package:flutter/material.dart';

class Flayers extends StatelessWidget {
  final String title;
  final Widget child; 

  const Flayers({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 12.0,
      shadowColor: Colors.blueGrey,      
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0)
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
      child: Column(
        children:  [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: TextStyle(letterSpacing: 1.5, color: Colors.blueGrey)),
          ),

          child,
        
          GestureDetector(
            onTap: (){},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Informacion', style: TextStyle(
                color: Colors.lightBlue              
              ),),
            ),
          )
        ],
      ),
    );
  }
}